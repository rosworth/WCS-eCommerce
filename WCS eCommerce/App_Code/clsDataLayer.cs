using System.Data.OleDb;

namespace WCS_eCommerce
{
    public class clsDataLayer
    {
        public static dsInfo VerifyUser(string Database, string UserName, string UserPassword)
        {
            // Add your comments here
            dsInfo DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Add your comments here
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // Add your comments here
            sqlDA = new OleDbDataAdapter("SELECT * FROM loginInfo " +
            "WHERE username LIKE '" + UserName + "' " +
            "AND password LIKE '" + UserPassword + "'", sqlConn);
            // Add your comments here
            DS = new dsInfo();
            // Add your comments here
            sqlDA.Fill(DS.loginInfo);
            // Add your comments here
            return DS;
        }
    }
}