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
	{"java",

		[](string path)
		{
			path += "source.java";
			return "sed -i -r '0,/public class ([a-zA-Z_$][a-zA-Z_$0-9]*)(.*)/s/public class ([a-zA-Z_$][a-zA-Z_$0-9]*)(.*)/public class source\\2/' " + path + " && javac " + path;
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
	{"java",

		[](string path)
		{
			return "java source";
		}
	},
};
