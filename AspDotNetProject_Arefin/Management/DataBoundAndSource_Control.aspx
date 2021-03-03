<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="DataBoundAndSource_Control.aspx.cs" Inherits="AspDotNetProject_Arefin.Management.DataBoundAndSource_Control" %>

<%@ Register Src="~/UserControls/DataBoundAndSourceControl.ascx" TagPrefix="uc1" TagName="DataBoundAndSourceControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DataBoundAndSourceControl runat="server" ID="DataBoundAndSourceControl" />
</asp:Content>
