#include <future>
#include <thread>
#include <chrono>
#include <iostream>
#include <fstream>
#include <sstream>
#include <mysql/mysql.h>

using namespace std;

ifstream HOST_FILE = ifstream ("../HOST");
const string path = "/home/alex/github/AT-Judge/";
string LINK_JUDGE = string ( (std::istreambuf_iterator<char>(HOST_FILE) ),
		(std::istreambuf_iterator<char>()        ) );

MYSQL* con = mysql_init (NULL);

#include "submit.hpp"
#include "box.hpp"
#include "lang.hpp"
#include "curl.lib.hpp"
#include "urldecode.hpp"

#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
#include <regex>

const int concurentThreadsSupported = 1;
box* free_boxes;
bool* promises;
thread** threads;

int getFree ()
{
	for (int i = 0 ; i < concurentThreadsSupported ; i ++)
		if (promises [i])
		{
			promises [i] = false;
			delete threads [i];
			threads [i] = nullptr;
		}
	for (int i = 0 ; i < concurentThreadsSupported ; i ++)
	{
		if (threads [i] == nullptr)
		{
			return i;
		}
	}
	return -1;
}

const string tl_error = "124\n";//"Time limit exceeded\n";
const string signal_11 = "11\n";//"Caught fatal signal 11\n";
const string compile_error = "Compilation error";

ofstream fout ("/tmp/boza");

void eval (submit curr, size_t boxId)
{
	promises[boxId] = true;
	curr.asEvaluating ();
	//fout << "KUCHE MRUSNO, BACHKAM" << endl;
	try
	{
		//fout << "KUCHE MRUSNO, BACHKAM" << endl;
		//fout << "KUCHE MRUSNO, BACHKAM" << endl;
		const string sourceFile = free_boxes [boxId].getPath (string ("source." + curr.lang).c_str ());

		//fout << "KUCHE MRUSNO, BACHKAM" << endl;
		createSourceFile:
		{
			ofstream file (sourceFile.c_str ());
			file << urlDecode (curr.code) << endl;
			fout << sourceFile << "\n";
			fout << urlDecode (curr.code) << endl;
		}
		cout << "Submit: " << curr.id << endl;
		cout << "created" << endl;

		double points = 0;
		double percent = 0;
		bool skip = false;
		string compilelog, log;

		CompileSource:
		{
			cout << "Compile: " << langs [curr.lang](free_boxes [boxId].getPath ()) << endl;
			compilelog = free_boxes [boxId].doCommand (langs [curr.lang](free_boxes [boxId].getPath ()));
			fout << compilelog << "\n-----------------------------\n";
			fout.flush ();
			if (compilelog.find ("error") != string::npos)
			{
				skip = true;
				log = "[\"" + compile_error + "\", 0]";
			}
		}
		cout << "compiled" << endl;
		cout << "skip = " << skip << endl;
		if (!skip)
		{
			vector <string> star;
			//fout << "GetTests" << endl;
			GetTests:
			{
				stringstream ss (curr.getTests ());

				while (ss.good ())
				{
					string substr;
					getline (ss, substr, ',');
					star.push_back (substr);
				}
				cout << "got tests " << ss.str() << endl;
			}

			//fout << "Evaluate" << endl;
			Evaluate:
			{
				cout << "evaluating: ";
				for (auto& x : star)
				{
					cout << x << " ";
					cout.flush ();
					//fout << "star: " << x << endl;
					string link = curr.task_row [3];
					string  in = regex_replace (curr.task_row [4], regex ("\\*"), x);
					string out = regex_replace (curr.task_row [5], regex ("\\*"), x);
					fout << in << " " << out << "\n";
					{
						stringstream ss;
						ss << "curl --silent \"" << link << "/" << in << "\" -o " << boxId << "/in; curl \"" << link << "/" << out << "\" -o " << boxId << "/outA";
						//	fout << ss.str () << "\n";
						system (ss.str ().c_str ());
					}
					{
						stringstream ss;
						ss << "cp " << boxId << "/in " << free_boxes [boxId].getPath () << "; cp " << boxId << "/outA " << free_boxes [boxId].getPath ();
						//	fout << ss.str () << "\n";
						system (ss.str ().c_str ());
					}
					string signal;
					{
						{
							stringstream ss;
							ss << path << "C++/" 
								<< boxId << "/outB";
							cout << ss.str () << endl;
							signal = free_boxes [boxId].doIsolatedCommand (langs_exec [curr.lang](free_boxes [boxId].getPath ()), string (curr.task_row [9]), string (curr.task_row [10]), string ("in"), ss.str ());
							cout << signal << endl;
						}
					}
					{
						if (signal == tl_error)
							log += "[\"TL\",0],";
						else if (signal == signal_11)
							log += "[\"11\",0],";
						else
						{
							stringstream ss;
							ss << "http://" << curr.getChecker () << "?type=" << curr.checker [0] << "&link=http%3A%2F%2F" << LINK_JUDGE << "%2FC%2B%2B%2F" << boxId << "&input=in&output1=outA&output2=outB";
							fout << ss.str () << "\n";
							cout << ss.str () << "\n";
							cout.flush ();
							string a;
							log += (a = GET (ss.str ()));
							log += ",";
							fout << a << endl;
							cout << a << endl;
							cout.flush ();
							a = a.substr (a.find (',') + 1);
							a.erase (a.size () - 1, 1);
							fout << a << endl;
							cout << a << endl;
							cout.flush ();
							percent += stod (a);
						}
					}
				}
				log.erase (log.size () - 1, 1);
			}
			percent /= star.size ();
			points = stod (curr.task_row [8]) * percent;
			cout << "evaluated" << endl;
		}

		//fout << "Delete" << endl;
		cout << "deleting..." << endl;
		Delete:
		{
			//remove ((sourceFile).c_str ());
			//remove ((string (free_boxes [boxId].getPath ("source.exe"))).c_str ());
			//remove ((string (free_boxes [boxId].getPath ("in"))).c_str ());
			//remove ((string (free_boxes [boxId].getPath ("outA"))).c_str ());
			//remove ((string (free_boxes [boxId].getPath ("outB"))).c_str ());
		}
		cout << "deleted" << endl;
		cout << "updating " << points << " " << log << " " << compilelog << endl;
		curr.updatePoints (points, "[" + log + "]", url_encode (compilelog));
		cout << "updated " << points << " " << log << " " << compilelog << endl;
	}
	catch (exception& e)
	{
		fout << "General: " << e.what () << "\n";
	}
	cout << "finishing..." << endl;
	cout << "#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=" << endl;
}

#include "trim"

bool to_print = true;

void wait_for_free ()
{
	to_print = true;
	while (getFree () == -1)
	{
		if (to_print)
		{
			cout << "waiting for core ...\n";
			to_print = false;
		}
	}
	to_print = true;
}

int main ()
{
	LINK_JUDGE = trim (LINK_JUDGE);
	free_boxes = new box [concurentThreadsSupported];
	threads = new thread* [concurentThreadsSupported];
	promises = new bool [concurentThreadsSupported];
	for (int i = 0 ; i < concurentThreadsSupported ; i ++)
		threads [i] = nullptr;
	if (con == NULL) 
	{
		fprintf (stderr, "%s\n", mysql_error (con));
		throw "Failed";
	}
	if (mysql_real_connect (    con, "localhost", "root", "tts2002", 
				"judge",           0,   NULL,         0) == NULL) 
	{
		fprintf (stderr, "%s\n", mysql_error (con));
		mysql_close (con);
		throw "Failed";
	}  
	while (true)
	{
		MYSQL_RES *res;
		MYSQL_ROW row;

		{
			char buffer [1024];
			sprintf (buffer, "SELECT * FROM `Submissions` WHERE `Points` IS NULL");

			if (mysql_query (con, buffer)) 
			{
				fprintf (stderr, "%s\n", mysql_error (con));
				mysql_close (con);
				throw "Failed";
			}
		}
		res = mysql_store_result (con);

		if (res != NULL)
		{
			while ((row = mysql_fetch_row (res)))
			{
				//cout << "waiting ..." << endl;
				//thread wait (wait_for_free);
				//wait.join ();
				cout << "Free core + avaible task ...\n";
				//int free_one = getFree ();
				//threads [free_one] = new thread (eval, submit (row [0], row [1], row [2], row [3], row [4], row [5]), free_one);
				//threads [free_one]->detach ();
				eval (submit (row [0], row [1], row [2], row [3], row [4], row [5]), 0);
			}

			mysql_free_result (res);
		}
		if (to_print)
		{
			cout << "no submissions ...\n";
			to_print = false;
			std::this_thread::sleep_for(5s);
		}
	}

	mysql_close (con);
}
