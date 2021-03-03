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
    public partial class CategoryInfo : System.Web.UI.UserControl
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
                gdViewCategoryInfo.DataBind();
            }
        }
        public void CleanAllControl()
        {
            txtCategoryName.Text = "";
            ckBoxAgree.Checked = false;
            lblMessage.Text = "";

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && txtCategoryName.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Category(CategoryName) VALUES(@categoryname)", con);
                    cmd.Parameters.AddWithValue("@categoryname", txtCategoryName.Text);
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

        protected void gdViewCategoryInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCategoryName.Text = gdViewCategoryInfo.SelectedRow.Cells[2].Text;

            lblCategoryID.Text = gdViewCategoryInfo.SelectedRow.Cells[1].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && txtCategoryName.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Category Set CategoryName=@categoryname Where CategoryID=@categoryid", con);
                    cmd.Parameters.AddWithValue("@categoryname", txtCategoryName.Text);
                    cmd.Parameters.AddWithValue("@categoryid", lblCategoryID.Text);

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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Category  Where CategoryID=@categoryid", con);
                cmd.Parameters.AddWithValue("@categoryid", lblCategoryID.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }
    }
}