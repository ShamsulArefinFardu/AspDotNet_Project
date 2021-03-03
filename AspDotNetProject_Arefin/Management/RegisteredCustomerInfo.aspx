<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="RegisteredCustomerInfo.aspx.cs" Inherits="AspDotNetProject_Arefin.Management.RegisteredCustomerInfo" %>

<%@ Register Src="~/UserControls/RegisteredCustomerInfoUserControl.ascx" TagPrefix="uc1" TagName="RegisteredCustomerInfoUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:RegisteredCustomerInfoUserControl runat="server" ID="RegisteredCustomerInfoUserControl" />
</asp:Content>
