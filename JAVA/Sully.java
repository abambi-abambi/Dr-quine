import java.io.*;
class Sully {
	public static void	filemaker(File output, String name, int i)
	{
		String origin = "import java.io.*;%1$cclass Sully_%4$d {%1$c	public static void	filemaker(File output, String name, int i)%1$c	{%1$c		String origin = %2$c%3$s%2$c;%1$c		try{PrintWriter writer = new PrintWriter(output);%1$c		writer.printf(origin, 10, 34, origin, i, 37);%1$c		writer.close();}%1$c		catch(FileNotFoundException ex){System.out.println(%2$cError1%2$c);}%1$c		String javac = String.format(%2$cjavac %5$cs; java Sully_%5$cd%2$c, name, i);%1$c		String[] commandAndArgs = new String[]{ %2$c/bin/sh%2$c, %2$c-c%2$c, javac };%1$c		try{Process p = Runtime.getRuntime().exec(commandAndArgs);}%1$c		catch(IOException e){System.out.println(%2$cError2%2$c);}%1$c	}%1$c%1$c	public static void main(String[] args)%1$c	{%1$c		int i = %4$d;%1$c%1$c		String name = String.format(%2$cSully_%5$cd.java%2$c, i);%1$c		File output = new File(name);%1$c		if (output.isFile())%1$c		{%1$c			--i;%1$c			name = String.format(%2$cSully_%5$cd.java%2$c, i);%1$c			output = new File(name);%1$c		}%1$c		if (i >= 0)%1$c			filemaker(output, name, i);%1$c	}%1$c}%1$c%1$c";
		try{PrintWriter writer = new PrintWriter(output);
		writer.printf(origin, 10, 34, origin, i, 37);
		writer.close();}
		catch(FileNotFoundException ex){System.out.println("Error1");}
		String javac = String.format("javac %s; java Sully_%d", name, i);
		String[] commandAndArgs = new String[]{ "/bin/sh", "-c", javac };
		try{Process p = Runtime.getRuntime().exec(commandAndArgs);}
		catch(IOException e){System.out.println("Error2");}
	}

	public static void main(String[] args)
	{
		int i = 5;

		String name = String.format("Sully_%d.java", i);
		File output = new File(name);
		if (output.isFile())
		{
			--i;
			name = String.format("Sully_%d.java", i);
			output = new File(name);
		}
		if (i >= 0)
			filemaker(output, name, i);
	}
}
