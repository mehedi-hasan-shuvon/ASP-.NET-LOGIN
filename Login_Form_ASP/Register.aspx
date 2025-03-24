<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Login_Form_ASP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #signupHeader{
            text-align:center;
            font-size:30px;
        }
        .auto-style1 {
            width: 400px;
            margin:auto;
            border:ridge 5px black;
        }
        .auto-style2 {
            height: 28px;
            width: 266px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 28px;
            width: 161px;
        }
        .auto-style5 {
            width: 161px;
        }
        .auto-style6 {
            width: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td id="signupHeader" class="auto-style3" colspan="2">SIGNUP FORM</td>
            </tr>
            <tr>
                <td class="auto-style4">FIRST NAME</td>
                <td class="auto-style2">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">LAST NAME</td>
                <td class="auto-style6">
                    <asp:TextBox ID="lastNameTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="lastNameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">GENDER</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="219px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Select a Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">EMAIL</td>
                <td class="auto-style6">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">ADDRESS</td>
                <td class="auto-style2">
                    <asp:TextBox ID="AddressTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">USERNAME</td>
                <td class="auto-style2">
                    <asp:TextBox ID="UsernameTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UsernameTextBox">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PASSWORD</td>
                <td class="auto-style2">
                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Strong Password (Uppercase, Lowercase,Numbers)" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">CONFIRM PASSWORD</td>
                <td class="auto-style6">
                    <asp:TextBox ID="ConfrimPasswordTextBox" runat="server" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please Re-enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfrimPasswordTextBox">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfrimPasswordTextBox" Display="Dynamic" ErrorMessage="Please Provide Correct Password" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="SIGN UP" Width="90px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />



    </form>
</body>
</html>
