using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNetProject_Arefin.UserControls
{
    public partial class ProductInformation : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                gdViewProductInformation.DataBind();
            }
        }
        public void CleanAllControl()
        {
            txtProductName.Text = "";
            txtDescription.Text = "";
            txtPrice.Text = "";
            ckBoxAgree.Checked = false;
            lblMessage.Text = "";

        }

        protected void gdViewProductInformation_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtProductName.Text = gdViewProductInformation.SelectedRow.Cells[2].Text;
            txtDescription.Text = gdViewProductInformation.SelectedRow.Cells[3].Text;
            txtPrice.Text = gdViewProductInformation.SelectedRow.Cells[4].Text;
            ddlCategoryID.Text = gdViewProductInformation.SelectedRow.Cells[5].Text;


            lblPID.Text = gdViewProductInformation.SelectedRow.Cells[1].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && txtProductName.Text != "" && txtDescription.Text != "" && txtPrice.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Product(Name, Description, Price, CategoryID) VALUES(@name, @description, @price, @categoryid)", con);
                    cmd.Parameters.AddWithValue("@name", txtProductName.Text);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@categoryid", ddlCategoryID.SelectedItem.Value);

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && txtProductName.Text != "" && txtDescription.Text != "" && txtPrice.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Product SET Name=@name, Description=@description, Price=@price WHERE ProductID = @productid", con);
                    cmd.Parameters.AddWithValue("@productid", lblPID.Text);
                    cmd.Parameters.AddWithValue("@name", txtProductName.Text);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);                    
                    cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void lblDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("DELETE FROM Product WHERE ProductID=@productid", con);
                cmd.Parameters.AddWithValue("@productid", lblPID.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }
    }
}