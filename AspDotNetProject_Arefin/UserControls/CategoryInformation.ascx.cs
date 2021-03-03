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
    public partial class CategoryInformation : System.Web.UI.UserControl
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
                gdViewCategoryInformation.DataBind();
            }
        }
        public void CleanAllControl()
        {
            ddlCategoryGents.Text = "";
            ckBoxAgree.Checked = false;
            lblMessage.Text = "";

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && ddlCategoryGents.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Category(CategoryName) VALUES(@categoryname)", con);
                    cmd.Parameters.AddWithValue("@categoryname", ddlCategoryGents.SelectedValue);
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

        protected void gdViewCategoryInformation_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCategoryGents.Text = gdViewCategoryInformation.SelectedRow.Cells[2].Text;

            lblCategoryID.Text = gdViewCategoryInformation.SelectedRow.Cells[1].Text;
        }
    }
}