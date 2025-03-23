<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Form_ASP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
        }

        table{
            margin: auto;
            width:300px;
            border:5px black ridge;
        }
        #LoginTitle{
            text-align:center;
            font-size:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table cellpadding="4" cellspacing="4">
            <tr>
                <td id="LoginTitle" class="auto-style2" colspan="2">LOGIN FORM</td>
            </tr>
            <tr>
                <td class="auto-style2">USERNAME</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PASSWORD</td>
                <td>
                    <asp:TextBox ID="PassTextBox" runat="server" Width="205px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Text="LOGIN" Width="118px" OnClick="LoginButton_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
