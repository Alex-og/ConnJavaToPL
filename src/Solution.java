import java.sql.*;

public class Solution {
    public static void main(String[] args) throws SQLException {

        String url = "jdbc:oracle:thin:@//localhost:1521/orcl";
        String userName = "userName";
        String password = "password";

        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        Connection con = DriverManager.getConnection(url, userName, password);
        CallableStatement cstm = con.prepareCall("begin fill_100_persons; commit; end;");
        cstm.execute();

        con.close();
        cstm.close();
    }
}
