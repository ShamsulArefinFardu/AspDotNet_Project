<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="CategoryAdd.aspx.cs" Inherits="AspDotNetProject_Arefin.Management.CategoryAdd" %>

<%@ Register Src="~/UserControls/CategoryInfo.ascx" TagPrefix="uc1" TagName="CategoryInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CategoryInfo runat="server" ID="CategoryInfo" />
</asp:Content>
