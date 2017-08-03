<%-- 
    Document   : datainsert
    Created on : Jul 3, 2017, 4:33:10 AM
    Author     : samislavath
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.BufferedReader"%>
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
            
            String FILENAME = "E:\\DOWNLOADS\\actual_detail.txt";
            BufferedReader br = null;
            FileReader fr = null;

            try {

                    fr = new FileReader(FILENAME);
                    br = new BufferedReader(fr);

                    String s;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
                    Statement st=con.createStatement();
                    br = new BufferedReader(new FileReader(FILENAME));
                    s = br.readLine();
                    int i=1;
                    while (s!= null)
                    {
                        if(s.charAt(0)-'a'<=26 && s.charAt(0)-'a'>=0)
                        {
                            String s1=null;
                            while ((s1 = br.readLine()) != null && (s1.charAt(0)-'a'>26 || s1.charAt(0)-'a'<0) )
                            {
                                //System.out.println(s1);
                                s+=s1;
                                s1=null;
                            }
                            System.out.println(s);
                            st.executeUpdate("INSERT INTO engdictionary (ID,VALUE) VALUES ('"+i+"','"+s+"')");
                            //st.executeUpdate("INSERT INTO engdictionary (VALUE) VALUES ('"+s+"')");
                            i++;
                            s=null;
                            s=s1;
                        }           
                    }

            } catch (IOException e) {

                    e.printStackTrace();

            }
        %>
    </body>
</html>
