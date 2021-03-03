<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegUserControl.ascx.cs" Inherits="AspDotNetProject_Arefin.UserControls.CustomerRegUserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style3 {
        width: 166px;
    }
    .auto-style4 {
        height: 26px;
        width: 213px;
    }
    .auto-style5 {
        width: 166px;
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        width: 213px;
    }
    .auto-style8 {
        height: 23px;
        width: 213px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3"><strong>Customer Registration</strong></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtCustomerName" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustomerName" runat="server" ControlToValidate="txtCustomerName" ErrorMessage="Required Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:DropDownList ID="ddlGender" runat="server" Width="200px">
                <asp:ListItem>Chose Any One</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Required Gender" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Out Of Range" ForeColor="Red" MaximumValue="12/12/2020" MinimumValue="12/12/1950" Type="Date"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPhoneNo" runat="server" Text="Phone Number"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNo" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Required Phone Number" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style8">
            <asp:CheckBox ID="ckBoxAgree" runat="server" Text="I am Agree" Width="200px" />
        </td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="Reset" />
        </td>
        <td>
            <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

