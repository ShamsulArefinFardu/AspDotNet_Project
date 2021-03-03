<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="AspDotNetProject_Arefin.Management.ProductInfo" %>

<%@ Register Src="~/UserControls/ProductInformation.ascx" TagPrefix="uc1" TagName="ProductInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ProductInformation runat="server" ID="ProductInformation" />
</asp:Content>
