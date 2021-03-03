<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="AspDotNetProject_Arefin.ContentPages.ProductInfo" %>

<%@ Register Src="~/UserControls/ProductInformation.ascx" TagPrefix="uc1" TagName="ProductInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:ProductInformation runat="server" ID="ProductInformation" />
</asp:Content>
