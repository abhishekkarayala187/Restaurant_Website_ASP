<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Restaurant_Website.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        width: 562px;
    }
        .auto-style3 {
            width: 562px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
    .auto-style5 {
        margin-left: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    
        <br />
        <table class="auto-style1" style="background-color: #FAEBD7" >
            <tr>
                <td colspan="2" style="text-align:center">Please Login First </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">Username:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Username" runat="server" Width="273px" CssClass="auto-style5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align:right">Password:</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" >
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Submit" runat="server" Text="Login" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" OnClick="Submit_Click" />
                </td>
            </tr>
        </table>
    <br /><br />
    <div style="text-align:center">
                    <asp:Button ID="Register" runat="server" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" Text="New? Register Here" Width="184px" OnClick="Register_Click" />
                
    </div>
    
</asp:Content>
