package project;

import java.sql.Connection;
import java.sql.*;

public class LoginDoctorDao extends ConnectionProvider {
    public  boolean check(String name,String password)
    {
        try{
            Connection con =ConnectionProvider.getCon();
            PreparedStatement ps= con.prepareStatement(" select * from `doctors` where `doctors`.`docfname`=? and `doctors`.`password`=?");
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
