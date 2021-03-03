using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net;
using System.Net.Mail;
using AspDotNetProject_Arefin.BL;
namespace AspDotNetProject_Arefin.UserControls
{
    public partial class CustomerRegUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ClearData()
        {
            txtCustomerName.Text = "";
            ddlGender.Text = ddlGender.Items[0].Value;
            txtEmail.Text = "";
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtPhoneNo.Text = "";
            txtAddress.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            ckBoxAgree.Checked = false;
            lblMessage.Text = "";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ckBoxAgree.Checked && txtCustomerName.Text != "" && txtEmail.Text != "" && txtPhoneNo.Text != "" && txtPassword.Text != "" && txtDOB.Text != "" && txtConfirmPassword.Text != "")
            {
                try
                {
                    CustomerReg reg = new CustomerReg();
                    reg.CustomerName = txtCustomerName.Text;
                    reg.Gender = ddlGender.SelectedValue;
                    reg.Email = txtEmail.Text;
                    reg.DOB = txtDOB.Text;
                    reg.PhoneNo = txtPhoneNo.Text;
                    reg.Address = txtAddress.Text;
                    reg.Password = txtPassword.Text;

                    bool status = reg.Save();
                    if (status == true)
                    {
                        ShowAlert("You Have Successfully Registered");

                        //Mail Send
                        sendMailToClient();
                        sendEmailToAuthority();
                        ClearData();

                    }
                    else
                    {
                        ShowAlert("Failed To Register");
                    }
                }
                catch (Exception ex)
                {
                    ShowAlert(ex.Message.ToString());
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Data";
            }

        }
        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
        private void sendMailToClient()
        {
            var fromAddress = "1258293arefin@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtEmail.Text;
            string subject = "Online Customer Registration";

            string body = "Hello " + txtCustomerName.Text + " You Have Been Registered Succesfully. \n";
            body += "You Can Now Enjoy Our Online Customer Facility \n";


            //smtp settings
            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);
        }

        //Mail Send To Authority
        protected void sendEmailToAuthority()
        {
            var fromAddress = "1258293arefin@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = "1258293arefin@gmail.com";
            string subject = "Customer Registration";

            string body = txtCustomerName.Text + " Has Registered. \n";
            body += "His/Her Information Are Provided Below : \n";
            body += "Customer Name : " + txtCustomerName.Text + "\n";
            body += "Email Address : " + txtEmail.Text + "\n";
            body += "BirthDate  : " + txtDOB.Text + "\n";
            body += "Gender : " + ddlGender.Text + "\n";
            body += "Phone No : " + txtPhoneNo.Text + "\n";


            //smtp settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);

        }
    }
}