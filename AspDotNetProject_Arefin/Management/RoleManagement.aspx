<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="AspDotNetProject_Arefin.Management.RoleManagement" %>

<%@ Register Src="~/UserControls/MyRoleManagement.ascx" TagPrefix="uc1" TagName="MyRoleManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:MyRoleManagement runat="server" id="MyRoleManagement" />
</asp:Content>
