<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Restaurant_Website.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        width: 553px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    
        <br />
        <table class="auto-style1" style="background-color: #FAEBD7">
            <tr>
                <td style="text-align:center" colspan="2">Register Yourself</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Name:</td>
                <td>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#CC0000" ControlToValidate="Name" ErrorMessage="Name field can not be empty" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Username:</td>
                <td>
                    <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="#CC0000" ControlToValidate="Username" ErrorMessage="Username field can not be empty" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Email:</td>
                <td>
                    <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#CC0000" ControlToValidate="Email" ErrorMessage="Please Enter correct Email Address" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#CC0000" ControlToValidate="Email" ErrorMessage="Email is required" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Password</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#CC0000" ControlToValidate="Password" ErrorMessage="Password is required" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Conform Password:</td>
                <td>
                    <asp:TextBox ID="ConformPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#CC0000" ControlToCompare="Password" ControlToValidate="ConformPassword" ErrorMessage="Passwords are not matching!" ForeColor="White"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Submit" runat="server" Text="Register" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" OnClick="Submit_Click" />
                </td>
            </tr>
        </table>
    
</asp:Content>
