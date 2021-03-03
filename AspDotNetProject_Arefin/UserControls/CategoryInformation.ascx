<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryInformation.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.CategoryInformation" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 231px;
    }
    .auto-style4 {
        width: 231px;
        height: 30px;
    }
    .auto-style6 {
        width: 372px;
    }
    .auto-style7 {
        height: 30px;
        width: 372px;
    }
    .auto-style8 {
        margin-left: 0px;
    }
    .auto-style9 {
        width: 288px;
    }
    .auto-style10 {
        height: 30px;
        width: 288px;
    }
    .auto-style11 {
        width: 304px;
    }
    .auto-style12 {
        height: 30px;
        width: 304px;
        text-align: center;
    }
    .auto-style13 {
        width: 288px;
        text-align: center;
    }
    .auto-style14 {
        width: 304px;
        text-align: center;
    }
    .auto-style15 {
        width: 372px;
        text-align: center;
    }
    .auto-style16 {
        width: 231px;
        text-align: center;
    }
</style>
<br /><br />
<h2 class="auto-style1">Category Information</h2>
<br />
<table class="auto-style2">
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style14">
            <strong>Gents Items</strong></td>
        <td class="auto-style13">
            <strong>Ladies Items</strong></td>
        <td class="auto-style15">
            <strong>Kids Items</strong></td>
        <td rowspan="6">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8" Height="96px">
                &nbsp;There Are Exclusive collection&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; available here<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; <a href="https://www.limeroad.com/exclusive-shirts-by-alvin-kelly-entire-">https://www.limeroad.com/exclusive-shirts-by-alvin-kelly-entire</a></asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16">
            <asp:Label ID="lblCategoryName" runat="server" Text="Category Name"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:DropDownList ID="ddlCategoryGents" runat="server">
                <asp:ListItem>Shirt</asp:ListItem>
                <asp:ListItem>Pant</asp:ListItem>
                <asp:ListItem>T-Shirt</asp:ListItem>
                <asp:ListItem>Polo</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style13">
            <asp:DropDownList ID="ddlCategoryLadies" runat="server">
                <asp:ListItem>Bag</asp:ListItem>
                <asp:ListItem>Watch</asp:ListItem>
                <asp:ListItem>Makeup Box</asp:ListItem>
                <asp:ListItem>Short Dress</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style15">
            <asp:DropDownList ID="ddlCategoryKids" runat="server">
                <asp:ListItem>Skerts</asp:ListItem>
                <asp:ListItem>Shorts</asp:ListItem>
                <asp:ListItem>Pajamas</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">
            <asp:CheckBox ID="ckBoxAgree" runat="server" Text="I am Agree" />
&nbsp;
            <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblCategoryID" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style12">
            <strong>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            </strong>
        </td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
</table>


<asp:GridView ID="gdViewCategoryInformation" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gdViewCategoryInformation_SelectedIndexChanged" Width="389px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

