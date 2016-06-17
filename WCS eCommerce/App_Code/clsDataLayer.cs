using System;
using System.Data;
using System.Data.OleDb;
using System.Net;

namespace WCS_eCommerce
{
    public class clsDataLayer
    {
        public static dsInfo VerifyUser(string database, string UserName, string UserPassword)
        {
            dsInfo DS;
            OleDbDataAdapter sqlDA;
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database);
            sqlDA = new OleDbDataAdapter("SELECT * FROM loginInfo " + "WHERE username= '" + UserName + "' " + "AND password= '" + UserPassword + "'", conn);
            DS = new dsInfo();
            sqlDA.Fill(DS.loginInfo);
            return DS;
        }

        public static dsInfo CheckUsername(string database, string UserName)
        {
            dsInfo DS;
            OleDbDataAdapter sqlDA;
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database);
            sqlDA = new OleDbDataAdapter("SELECT * FROM loginInfo " + "WHERE username= '" + UserName + "'", conn);
            DS = new dsInfo();
            sqlDA.Fill(DS.loginInfo);
            return DS;
        }

        public static string GetFirstName(string database, string customerID)
        {
            string temp = "";
            OleDbCommand comm = new OleDbCommand();
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database);
            comm.Connection = conn;
            comm.CommandText = "SELECT * FROM customerInfo " + "WHERE customerID LIKE '" + customerID + "'";
            comm.Connection.Open();
            OleDbDataReader read = comm.ExecuteReader();
            while (read.Read())
            {
                temp = read["firstName"].ToString();
            }
            return temp;
        }

        public static string GetCustomerID(string database, string UserName, string UserPassword)
        {
            string temp = "";
            OleDbCommand comm = new OleDbCommand();
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database);
            comm.Connection = conn;
            comm.CommandText = "SELECT * FROM loginInfo " + "WHERE username = '" + UserName + "' " + "AND password = '" + UserPassword + "'";
            comm.Connection.Open();
            OleDbDataReader read = comm.ExecuteReader();
            while (read.Read())
            {
                temp = read["customerID"].ToString();
            }
            return temp;
        }

        public static bool RegisterUser(string database, string Username, string Password, string FirstName, string LastName, string Address1, string Address2, string City, string State, string Zip)
        {
            bool recordSaved;
            OleDbTransaction myTransaction = null;
            try
            {
                OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database);
                conn.Open();
                string strSQL2 = "INSERT INTO loginInfo ([username], [password]) VALUES (?, ?)";
                OleDbCommand command2 = new OleDbCommand(strSQL2, conn);
                myTransaction = conn.BeginTransaction();
                command2.Transaction = myTransaction;
                command2.Parameters.AddWithValue("@username", Username);
                command2.Parameters.AddWithValue("@password", Password);
                command2.ExecuteNonQuery();
                myTransaction.Commit();

                myTransaction = conn.BeginTransaction();
                string strSQL = "INSERT INTO customerInfo (customerID, firstName, lastName, address1, address2, city, state, zip) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                OleDbCommand command = new OleDbCommand(strSQL, conn);
                command.Transaction = myTransaction;
                command.Parameters.AddWithValue("@customerID", GetCustomerID(database, Username, Password));
                command.Parameters.AddWithValue("@firstName", FirstName);
                command.Parameters.AddWithValue("@lastName", LastName);
                command.Parameters.AddWithValue("@address1", Address1);
                command.Parameters.AddWithValue("@address2", Address2);
                command.Parameters.AddWithValue("@city", City);
                command.Parameters.AddWithValue("@state", State);
                command.Parameters.AddWithValue("@zip", Zip);
                command.ExecuteNonQuery();

                myTransaction.Commit();
                conn.Close();
                recordSaved = true;
            }
            catch (WebException)
            {
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }
    }
}