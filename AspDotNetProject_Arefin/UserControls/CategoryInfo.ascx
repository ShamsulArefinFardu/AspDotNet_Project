<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryInfo.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.CategoryInfo" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        margin-left: 41px;
    }
    .auto-style4 {
        width: 149px;
    }
    .auto-style5 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style6 {
        width: 149px;
        text-align: left;
    }
    .auto-style7 {
        margin-left: 0px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="3"><strong>Category Information<br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblCategoryName" runat="server" Text="Category Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCategoryName" runat="server" Width="285px" CssClass="auto-style7"></asp:TextBox>
        </td>
        <td rowspan="3">
            <br />
            <asp:GridView ID="gdViewCategoryInfo" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gdViewCategoryInfo_SelectedIndexChanged" Width="493px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Category]" DeleteCommand="DELETE FROM [Category] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Category] ([CategoryName]) VALUES (@CategoryName)" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @CategoryID">
                <DeleteParameters>
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CategoryName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:CheckBox ID="ckBoxAgree" runat="server" Text="I am Agree" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lblCategoryID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
            <strong>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            &nbsp;</strong><asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
&nbsp;
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
</table>

