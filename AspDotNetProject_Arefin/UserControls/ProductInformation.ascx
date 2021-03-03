<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductInformation.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.ProductInformation" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 209px;
    }
    .auto-style3 {
        text-align: center;
        font-weight: normal;
    }
    .auto-style4 {
        width: 208px;
    }
    .auto-style7 {
        width: 209px;
        text-align: center;
    }
</style>
<br />
<h2 class="auto-style3"><strong>Product Information</strong></h2>
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style7">
            <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtProductName" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
        <td rowspan="7">
            &nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPrice" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="lblCategoryID" runat="server" Text="Category Name"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:DropDownList ID="ddlCategoryID" runat="server" Width="200px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            <br />
        </td>
        <td class="auto-style4">
            <br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            <asp:CheckBox ID="ckBoxAgree" runat="server" Text="I am Agree" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
        </td>
        <td class="auto-style4">
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPID" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
&nbsp;
            <asp:Button ID="lblDelete" runat="server" OnClick="lblDelete_Click" Text="Delete" />
        </td>
        <td class="auto-style4">
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4">
            <br />
        </td>
    </tr>
</table>
<asp:GridView ID="gdViewProductInformation" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gdViewProductInformation_SelectedIndexChanged" Width="573px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([Name], [Description], [Price], [CategoryID]) VALUES (@Name, @Description, @Price, @CategoryID)" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [CategoryID] = @CategoryID WHERE [ProductID] = @ProductID">
    <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="ProductID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

