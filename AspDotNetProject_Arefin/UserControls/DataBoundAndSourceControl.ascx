<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DataBoundAndSourceControl.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.DataBoundAndSourceControl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        font-size: x-large;
    }
    .auto-style5 {
        text-align: left;
    }
</style>
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong>From View of Customer Informatiom</strong></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <div class="auto-style5">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CustomerRegistrationID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    CustomerRegistrationID:
                    <asp:Label ID="CustomerRegistrationIDLabel1" runat="server" Text='<%# Eval("CustomerRegistrationID") %>' />
                    <br />
                    CustomerName:
                    <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PhoneNo:
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Password:
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CustomerName:
                    <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PhoneNo:
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Password:
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CustomerRegistrationID:
                    <asp:Label ID="CustomerRegistrationIDLabel" runat="server" Text='<%# Eval("CustomerRegistrationID") %>' />
                    <br />
                    CustomerName:
                    <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Bind("CustomerName") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PhoneNo:
                    <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Bind("PhoneNo") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CustomerRegistration]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<br />
<table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong>Data List View Of&nbsp; Product Information</strong></td>
    </tr>
    <tr>
        <td>
            <div class="auto-style5">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    ProductID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    CategoryID:
                    <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<br />
<p class="auto-style3">
    <strong><span class="auto-style4">List View Of&nbsp; Category Information</span></strong></p>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="CategoryID" DataSourceID="SqlDataSource3">
    <AlternatingItemTemplate>
        <li style="background-color: #FFFFFF;color: #284775;">CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #999999;">CategoryID:
            <asp:Label ID="CategoryIDLabel1" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">CategoryName:
            <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #E0FFFF;color: #333333;">CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

<br />
<br />

<br />
