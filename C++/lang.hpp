#include <map>
#include <functional>

using namespace std;

map <string, function <string(string)> > langs = {
	{"cpp", 
		
		[](string path)
		{
			return "timeout 60s /usr/bin/g++ " + path + "source.cpp -o " + path + "source.exe -Wall -Wextra -std=c++1z -O2 -lm -static";
		}
	},
	{"c", 
	
		[](string path)
		{
			return "timeout 60s /usr/bin/gcc " + path + "source.c   -o " + path + "source.exe -Wall -Wextra -std=c11 -O2 -lm -static";
		}
	},
	{"py", 
	
		[](string path)
		{
			return "";
		}
	},
	{"js", 
	
		[](string path)
		{
			return "";
		}
	},
};

map <string, function <string(string)> > langs_exec = {
	{"cpp", 
		
		[](string path)
		{
			return "./source.exe";
		}
	},
	{"c", 
	
		[](string path)
		{
			return "./source.exe";
		}
	},
	{"py", 
	
		[](string path)
		{
			return "python source.py";
		}
	},
	{"js", 
	
		[](string path)
		{
			return "node source.js";
		}
	},
};
