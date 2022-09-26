/*
	1
*/
import java.io.*;
#define FILE_NAME "Grace_kid.java"
#define STR "/*%c	1%c*/%cimport java.io.*;%c#define FILE_NAME %cGrace_kid.java%c%c#define STR %c%s%c%c#define FT(x) public class Grace{public static void main(String[] args){File output = new File(FILE_NAME);try{PrintWriter writer = new PrintWriter(output);writer.printf(STR,10,10,10,10,34,34,10,34,STR,34,10,34,34,10,10);writer.close();}catch(FileNotFoundException ex){System.out.println(%cError%c);}}}%cFT(FILE_NAME)%c"
#define FT(x) public class Grace{public static void main(String[] args){File output = new File(FILE_NAME);try{PrintWriter writer = new PrintWriter(output);writer.printf(STR,10,10,10,10,34,34,10,34,STR,34,10,34,34,10,10);writer.close();}catch(FileNotFoundException ex){System.out.println("Error");}}}
FT(FILE_NAME)
