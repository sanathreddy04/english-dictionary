
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author samislavath
 */
public class fun {
    public static void main(String[] args)
    {
            String FILENAME = "E:\\DOWNLOADS\\actual_detail.txt";
            BufferedReader br = null;
            FileReader fr = null;

            try {

                    fr = new FileReader(FILENAME);
                    br = new BufferedReader(fr);

                    String s;

                    br = new BufferedReader(new FileReader(FILENAME));
                    s = br.readLine();
                    while (s!= null)
                    {
                        if(s.charAt(0)-'a'<=26 && s.charAt(0)-'a'>=0)
                        {
                            String s1=null;
                            while ((s1 = br.readLine()) != null && (s1.charAt(0)-'a'>26 || s1.charAt(0)-'a'<0) )
                            {
                                System.out.println(s1);
                                s+=s1;
                                s1=null;
                            }
                            System.out.println(s);
                            s=null;
                            s=s1;
                        }
                        
                    }

            } catch (IOException e) {

                    e.printStackTrace();

            }
    }
            
}
