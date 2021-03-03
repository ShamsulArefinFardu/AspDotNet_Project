<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="AspDotNetProject_Arefin.ContentPages.CustomerRegistration" %>

<%@ Register Src="~/UserControls/CustomerRegUserControl.ascx" TagPrefix="uc1" TagName="CustomerRegUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:CustomerRegUserControl runat="server" ID="CustomerRegUserControl" />
</asp:Content>
