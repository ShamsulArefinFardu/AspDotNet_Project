<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testCategory.aspx.cs" Inherits="AspDotNetProject_Arefin.testCategory" %>

<%@ Register Src="~/UserControls/CategoryInformation.ascx" TagPrefix="uc1" TagName="CategoryInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:CategoryInformation runat="server" id="CategoryInformation" />
</asp:Content>
