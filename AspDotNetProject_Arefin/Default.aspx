<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspDotNetProject_Arefin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron"  style="background-image:url(images/image.jpg); color:white; background-repeat:no-repeat; background-size:cover; background-position:center;">
        <h1>Admin</h1>
        <p class="lead">Admin: Arefin | Email: arefin@gmail.com | Password: Arefin123%</p>
        <p><a href="Management/AdminHome.aspx" class="btn btn-primary btn-lg">Admin Login &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>About Us</h2>
            <p>
                We believe everyone deserves to have a website or online store. 
Innovation and simplicity makes us happy: our goal is to customer desire satisfaction barriers that
can prevent business owners from making ourwebsite. We're excited to help you on your journey!
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Contact</h2>
            <p>
                Email: arefin@gmail.com
                <br />
                Talk To Us: 01670-634279
                <br />
                Address: Gypsy Village, C-Block, Ground Floor, Chakbazar,Ctg 

            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our Story</h2>
            <p>
                Today, we're proud to empower individuals and small business owners around the Country. Everyone deserves Online Shop, and we're excited to see what you Want.

            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
