<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisteredCustomerInfoUserControl.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.RegisteredCustomerInfoUserControl" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: x-large;
        font-weight: normal;
    }
</style>
<br />
    <h3 class="auto-style1"><strong>Registered Customer Information</strong></h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CustomerRegistrationID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="662px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CustomerRegistrationID" HeaderText="CustomerRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerRegistrationID" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [CustomerRegistration] WHERE [CustomerRegistrationID] = @CustomerRegistrationID" InsertCommand="INSERT INTO [CustomerRegistration] ([CustomerName], [Gender], [Email], [DOB], [PhoneNo], [Address], [Password]) VALUES (@CustomerName, @Gender, @Email, @DOB, @PhoneNo, @Address, @Password)" SelectCommand="SELECT * FROM [CustomerRegistration]" UpdateCommand="UPDATE [CustomerRegistration] SET [CustomerName] = @CustomerName, [Gender] = @Gender, [Email] = @Email, [DOB] = @DOB, [PhoneNo] = @PhoneNo, [Address] = @Address, [Password] = @Password WHERE [CustomerRegistrationID] = @CustomerRegistrationID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerRegistrationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CustomerRegistrationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />