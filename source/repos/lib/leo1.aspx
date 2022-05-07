<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leo1.aspx.cs" Inherits="lib.leo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 116px;
        }
        .auto-style4 {
            width: 116px;
            height: 26px;
        }
        .auto-style6 {
            width: 116px;
            height: 23px;
        }
        .auto-style8 {
            height: 26px;
            width: 182px;
        }
        .auto-style9 {
            width: 182px;
        }
        .auto-style10 {
            height: 23px;
            width: 182px;
        }
        .auto-style11 {
            height: 26px;
            width: 213px;
        }
        .auto-style12 {
            width: 213px;
        }
        .auto-style13 {
            height: 23px;
            width: 213px;
        }
        .auto-style14 {
            height: 26px;
            width: 183px;
        }
        .auto-style15 {
            width: 183px;
        }
        .auto-style16 {
            height: 23px;
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">First Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="Validator" runat="server" ControlToValidate="fname" ErrorMessage="This Field Is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="Validator0" runat="server" ControlToValidate="lname" ErrorMessage="This Field Is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Username:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Uname" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="Validator1" runat="server" ControlToValidate="Uname" ErrorMessage="This Field Is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="Pass" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="ConPass" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pass" ControlToValidate="ConPass" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Country:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Argentina</asp:ListItem>
                        <asp:ListItem>Brazil</asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3">Gender:</td>
                <td class="auto-style9">
                    <input id="Radio1" type="radio" name="Gender" />Male
                    <input id="Radio2" type="radio"name="Gender" />Female</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="Validator3" runat="server" ControlToValidate="Email" ErrorMessage="This Field Is Required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
