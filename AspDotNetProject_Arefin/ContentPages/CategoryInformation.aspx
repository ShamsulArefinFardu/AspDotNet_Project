<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryInformation.aspx.cs" Inherits="AspDotNetProject_Arefin.ContentPages.CategoryInformation" %>

<%@ Register Src="~/UserControls/CategoryInfo.ascx" TagPrefix="uc1" TagName="CategoryInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <uc1:CategoryInfo runat="server" ID="CategoryInfo" />
</asp:Content>
