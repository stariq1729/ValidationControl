<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="ValidationControl.ValidationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 270px;
            margin-top: 24px;
        }
        .auto-style2 {
            height: 30px;
            width: 554px;
        }
        .auto-style3 {
            height: 54px;
        }
        .auto-style8 {
            height: 44px;
            width: 213px;
        }
        .auto-style9 {
            height: 44px;
            width: 554px;
        }
        .auto-style10 {
            height: 70px;
            width: 213px;
        }
        .auto-style11 {
            height: 70px;
            width: 554px;
        }
        .auto-style12 {
            height: 30px;
            width: 213px;
        }
        .auto-style13 {
            height: 22px;
            width: 213px;
        }
        .auto-style14 {
            height: 22px;
            width: 554px;
        }
        .auto-body {
            display: flex;
            justify-content: center; /* horizontal center */
            align-items: center; /* vertical center */
            min-height: 80vh; /* full screen height */
            margin: auto;
            border: 2px solid black; 
        }

    </style>
</head>
<body class="auto-body" style="height: 281px; width: 1210px; margin-right: 36px; ">
    <form id="form1" runat="server">
            <h2 style="height: 376px; width: 1021px;">STUDENT REGISTRATION FORM
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#999999" Font-Size="Large" ForeColor="#CC0000" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">STUDENT NAME</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="Name" runat="server" Width="196px" Height="28px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please Enter Name" ForeColor="#CC0000" SetFocusOnError="true" Font-Size="Small">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">STUDENT EMAIL</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="email" runat="server" Width="197px" Height="26px" style="margin-left: 0px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Email" ForeColor="#CC0000" SetFocusOnError="true" BorderColor="#CCCCCC" Display="Dynamic" Font-Size="Small">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="invalid email" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">RE-ENTER EMAIL</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="Re_Enter" runat="server" OnTextChanged="TextBox3_TextChanged" Width="193px" Height="29px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Re_Enter" ErrorMessage="Please Re_Enter mail" ForeColor="#CC0000" SetFocusOnError="True" Display="Dynamic" Font-Size="Small">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="email" ControlToValidate="Re_Enter" Display="Dynamic" ErrorMessage="Email not Match" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">CLASS</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="class_text" runat="server" Height="27px" Width="199px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ClassText" runat="server" ControlToValidate="class_text" Display="Dynamic" ErrorMessage="Please enter class" Font-Size="Small" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="class_text" Display="Dynamic" ErrorMessage="classs should be from 1 to 12" ForeColor="#CC0000" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"></td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="88px" ForeColor="#666666" Height="28px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
        </h2>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
