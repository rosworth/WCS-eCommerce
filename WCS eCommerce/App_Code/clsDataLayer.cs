using System.Data.OleDb;

namespace WCS_eCommerce
{
    public class clsDataLayer
    {
        public static dsLogin VerifyUser(string Database, string UserName, string UserPassword)
        {
            // Add your comments here
            dsLogin DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Add your comments here
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // Add your comments here
            sqlDA = new OleDbDataAdapter("SELECT SecurityLevel FROM tblUserLogin " +
            "WHERE UserName LIKE '" + UserName + "' " +
            "AND UserPassword LIKE '" + UserPassword + "'", sqlConn);
            // Add your comments here
            DS = new dsLogin();
            // Add your comments here
            sqlDA.Fill(DS.loginInfo);
            // Add your comments here
            return DS;
        }
    }
}