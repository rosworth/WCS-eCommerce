using System;
using System.Data;
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

        public static string GetFirstName(string Database, string UserName, string UserPassword)
        {
            string temp = "";
            OleDbCommand comm = new OleDbCommand();
            OleDbConnection sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
            // Add your comments here
            comm.Connection = sqlConn;
            comm.CommandText = "SELECT * FROM customerInfo" + "WHERE username LIKE '" + UserName + "' " + "AND password LIKE '" + UserPassword + "'";
            comm.Connection.Open();
            OleDbDataReader read = comm.ExecuteReader();
            while (read.Read())
            {
                temp = read["firstName"].ToString();
            }
            return temp;
        }

        public static bool RegisterUser(string Database, string FirstName, string LastName, string Address1, string Address2, string City, string State, string Zip)
        {
            bool recordSaved;
            // ** NEW ** Add your comments here
            OleDbTransaction myTransaction = null;
            try
            {
                // Add your comments here
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                // ** NEW ** Add your comments here
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;
                // Add your comments here
                strSQL = "INSERT INTO customerInfo VALUES ('" + FirstName + "', '" + LastName + "', '" + Address1 + "', '" + Address2 + "', '" + City + "', '" + State + "', '" + Zip + "')";
                // Add your comments here
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                // Add your comments here
                command.ExecuteNonQuery();
                // ** NEW ** Add your comments here
                myTransaction.Commit();
                // Add your comments here
                conn.Close();
                recordSaved = true;
            }
            catch (Exception ex)
            {
                // ** NEW ** Add your comments here
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }
    }
}