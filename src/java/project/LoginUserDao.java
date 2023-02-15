package project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginUserDao {
      public  boolean check(String name,String password)
    {
        try{
            Connection con =ConnectionProvider.getCon();
            PreparedStatement ps= con.prepareStatement(" select * from `patients` where `patients`.`fname`=? and `patients`.`password`=?");
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs= ps.executeQuery();
            if(rs.next())
            {
              return true;
            }
        }
        catch(Exception e)
        {
            System.out.println(""+e);
        }
      return false;
    }
}
