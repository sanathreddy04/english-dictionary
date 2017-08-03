<%-- 
    Document   : sql
    Created on : Jul 2, 2017, 6:12:59 PM
    Author     : samislavath
--%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
	String FILENAME = "E:\\DOWNLOADS\\outputdic.txt";
        Scanner scanner = new Scanner(new File(FILENAME));
        int [] tall = new int [100];
        String s;
        int i = 0;
        while(scanner.hasNext())
        {
            System.out.println("sam"+scanner.next());
            System.out.println(scanner.nextInt());
        }
		/*BufferedReader br = null;
		FileReader fr = null;

		try {

			fr = new FileReader(FILENAME);
			br = new BufferedReader(fr);

			String sCurrentLine;

			br = new BufferedReader(new FileReader(FILENAME));

			while ((sCurrentLine = br.readLine()) != null) 
                        {
				System.out.println(sCurrentLine);
			}

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			try {

				if (br != null)
					br.close();

				if (fr != null)
					fr.close();

			} catch (IOException ex) {

				ex.printStackTrace();

			}

		}*/
    /*try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
        Statement st=con.createStatement();
        int CALL=1;
        ResultSet rs=st.executeQuery("select * from dictionary_table where ID="+CALL);
        while(rs.next())
        {
            out.println(rs.getString("VALUE"));
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }*/
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
        Statement st=con.createStatement();
        int CALL=1;
        String s1="hi sam";
        //st.executeUpdate("INSERT INTO engdictionary (ID,VALUE) VALUES ('"+4+"','"+s1+"')");
        st.executeUpdate("INSERT INTO engdictionary (VALUE) VALUES ('"+s1+"')");
        
        /*while(rs.next())
        {
            out.println(rs.getString("VALUE"));
        }*/
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
    </body>
</html>
