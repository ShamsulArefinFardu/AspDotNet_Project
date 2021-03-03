using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace AspDotNetProject_Arefin.DAL
{
    public class Registration
    {
        public bool RegisterData(string CustomerName, string Gender, string Email, string DOB, string PhoneNo, string Address, string Password)
        {
            conString.con.Open();
            try
            {
                string query = "Insert Into CustomerRegistration Values('" + CustomerName + "','" + Gender + "','" + Email + "','" + DOB + "','" + PhoneNo + "','" + Address + "','" + Password + "')";
                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
            }
        }
    }
}