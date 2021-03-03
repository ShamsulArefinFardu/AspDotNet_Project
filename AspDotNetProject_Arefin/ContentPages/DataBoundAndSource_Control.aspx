<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataBoundAndSource_Control.aspx.cs" Inherits="AspDotNetProject_Arefin.ContentPages.DataBoundAndSource_Control" %>

<%@ Register Src="~/UserControls/DataBoundAndSourceControl.ascx" TagPrefix="uc1" TagName="DataBoundAndSourceControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:DataBoundAndSourceControl runat="server" id="DataBoundAndSourceControl" />
</asp:Content>
