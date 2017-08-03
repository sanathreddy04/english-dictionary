<%-- 
    Document   : lite
    Created on : Jul 3, 2017, 12:34:34 AM
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
  class tri
{
	char d;
	int po=-1;
	tri[] a=new tri[26];
	int x=1;

}
  class binary
  {
      tri w=new tri();
      
        void insert(String s,tri t,int y)
        {
            for(int i=0;i<s.length();i++)
	    {
                if(s.charAt(i)-'a'<0 || s.charAt(i)-'a'>26)
                continue;
		if(t.a[s.charAt(i)-'a']==null)
		{
			tri t1=new tri();
			t1.d=s.charAt(i);
			t.a[s.charAt(i)-'a']=t1;
			t=t.a[s.charAt(i)-'a'];
		}
		else
		{
			t=t.a[s.charAt(i)-'a'];
		}
	    }
	    t.po=y;
        }
        int findwordreference(String s,tri t)
        {
            for(int i=0;i<s.length() && t!=null;i++)
            {
		if(t.a[s.charAt(i)-'a']!=null)
		t=t.a[s.charAt(i)-'a'];
		else return -1;
            }
            if(t!=null && t.po!=-1)
            return t.po;
           return -1;
        }
        void search(int x)
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from dictionary_table where ID="+x);
                while(rs.next())
                {
                    out.println(rs.getString("VALUE"));
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        }
       
}
                String s;
               int i ;
               binary t=new binary();
               while(scanner.hasNext())
               {
                   s=scanner.next();
                   i=scanner.nextInt();
                   t.insert(s,t.w,i);
               }
               //while(true)
            {
		String s1="zulus";
		//cin>>s1;
		int x=t.findwordreference(s1,t.w);
		System.out.println("this is answer"+x);
		/*if(x!=-1)
		search(x);
		else
		{
			cout<<"No Match Meaning is available in OXWARD DICTIONARY..............."<<endl;
		}*/
	}
%>
    </body>
</html>
