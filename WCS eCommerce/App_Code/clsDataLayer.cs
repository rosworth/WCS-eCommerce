using System;
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

        public static bool PlaceOrder(string database, string customerID, DateTime date, double deposit, Int32 total, string payment, string status)
        {
            bool recordSaved;
            OleDbTransaction myTransaction = null;
            try
            {
                string strSQL = string.Empty;
                using (OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + database))
                {
                    conn.Open();
                    try
                    {
                        strSQL = "INSERT INTO [order] ([customerID], [dateTime], [deposit], [total], [payment], [status]) "
                            + "VALUES ('" + customerID + "', '" + date + "', " + deposit + ", " + total + ", '" + payment + "', '" + status + "')";
                        //+ "VALUES (?, ?, ?, ?, ?, ?)";
                        OleDbCommand command = new OleDbCommand(strSQL, conn);
                        myTransaction = conn.BeginTransaction();
                        command.Transaction = myTransaction;

                        //command.Parameters.AddWithValue("@customerID", customerID);
                        OleDbParameter p0 = new OleDbParameter();
                        p0.DbType = System.Data.DbType.String;
                        p0.Value = customerID.ToString();
                        p0.ParameterName = "@customerID";
                        command.Parameters.Add(p0);


                        //command.Parameters.AddWithValue("@dateTime", date);
                        OleDbParameter p1 = new OleDbParameter();
                        p1.DbType = System.Data.DbType.DateTime;
                        p1.Value = date;
                        p1.ParameterName = "@dateTime";
                        command.Parameters.Add(p1);

                        //command.Parameters.AddWithValue("@deposit", (decimal)deposit);
                        OleDbParameter p2 = new OleDbParameter();
                        p2.DbType = System.Data.DbType.Double;
                        p2.Value = (Double)deposit;
                        p2.ParameterName = "@deposit";
                        command.Parameters.Add(p2);

                        //command.Parameters.AddWithValue("@total", (decimal)total);
                        OleDbParameter p3 = new OleDbParameter();
                        p3.DbType = System.Data.DbType.Int32;
                        p3.Value = (Int32)total;
                        p3.ParameterName = "@total";
                        command.Parameters.Add(p3);

                        //command.Parameters.AddWithValue("@payment", payment);
                        OleDbParameter p4 = new OleDbParameter();
                        p4.DbType = System.Data.DbType.String;
                        p4.Value = payment.ToString();
                        p4.ParameterName = "@payment";
                        command.Parameters.Add(p4);

                        //command.Parameters.AddWithValue("@status", status);
                        OleDbParameter p5 = new OleDbParameter();
                        p5.DbType = System.Data.DbType.String;
                        p5.Value = status.ToString();
                        p5.ParameterName = "@status";
                        command.Parameters.Add(p5);

                        command.ExecuteNonQuery();
                        myTransaction.Commit();
                    }
                    catch (OleDbException iEx)
                    {
                        Console.WriteLine(iEx.ToString());
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
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