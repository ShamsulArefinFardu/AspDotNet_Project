using AspDotNetProject_Arefin.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspDotNetProject_Arefin.BL
{
    public class CustomerReg
    {
        private string _CustomerName;
        private string _Gender;
        private string _Email;
        private string _DOB;
        private string _PhoneNo;
        private string _Address;
        private string _Password;



        public string CustomerName
        {
            get { return _CustomerName; }
            set { _CustomerName = value; }
        }
        public string Gender
        {
            get { return _Gender; }
            set { _Gender = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public string DOB
        {
            get { return _DOB; }
            set { _DOB = value; }
        }
        public string PhoneNo
        {
            get { return _PhoneNo; }
            set { _PhoneNo = value; }
        }
        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }
        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }
        public bool Save()
        {
            try
            {
                Registration registration = new Registration();
                registration.RegisterData(_CustomerName, _Gender, _Email, _DOB, _PhoneNo, _Address, _Password);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }
    }
}