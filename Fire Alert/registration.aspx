<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Lucida Handwriting";
        }
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            height: 24px;
            width: 322px;
        text-align: left;
            font-size: small;
        }
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            width: 322px;
            text-align: left;
            font-size: small;
        }
        .style4
        {
    }
    .style5
    {
        height: 24px;
        width: 476px;
        text-align: left;
    }
    .style6
    {
        width: 476px;
        text-align: left;
    }
    .style7
    {
        font-family: "Times New Roman", Times, serif;
    }
        .style8
        {
            font-size: small;
        }
        .style9
        {
            font-family: "Times New Roman", Times, serif;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">REGISTER</i></b></center></h2>

 <div class="container">
        <div class="row">
            <div class="col-md-6 px-0">
                <div class="img_container">
                    <div class="img-box">
                        <img src="images/slider-bg.jpg" alt="" width=1200 height=400>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <table  class="style1">
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration</h2>
        <tr>
            <td align="center" class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name</td>
            <td class="style5">
                <asp:TextBox ID="txtname" runat="server" CssClass="style9"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Please Enter The Name" 
                    ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Only character are allowed" 
                    ForeColor="Red" ValidationExpression="[a-z\sA-Z]*" CssClass="style7"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
            <td class="style6">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    CssClass="style9"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Please Enter The Password" 
                    ForeColor="Red" CssClass="style9"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password</td>
            <td class="style6">
                <asp:TextBox ID="txtconfirm1" runat="server" TextMode="Password" 
                    CssClass="style9"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtconfirm1" 
                    ErrorMessage="Please enter the correct password" ForeColor="Red" 
                    CssClass="style7"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconfirm1" 
                    ErrorMessage="Password mismatch" ForeColor="Red" CssClass="style7"></asp:CompareValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Type&nbsp;
                &nbsp;</td>
            <td class="style6">
                <asp:DropDownList ID="ddluser" runat="server" style="margin-bottom: 0px" 
                    CssClass="style9" Height="16px" Width="105px">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    
                    <asp:ListItem>Admin</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone</td>
            <td class="style6">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" CssClass="style9"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Please enter the number" 
                    ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="Only number are allowed" 
                    ForeColor="Red" ValidationExpression="[0-9]*" CssClass="style7"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail</td>
            <td class="style6">
                <asp:TextBox ID="txtemail" runat="server" CssClass="style9"></asp:TextBox>
                <span class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please enter the email" 
                    ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Incorrect email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="style7"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <span class="style7">&nbsp;&nbsp;&nbsp;</span><span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    BorderColor="Black" BorderStyle="None" Font-Bold="True" 
                    Font-Names="Lucida Handwriting" ForeColor="#990000" CssClass="style7" 
                    Height="30px" Width="75px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><span 
                    class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style1"><asp:Button 
                    ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="Clear" BorderColor="Black" BorderStyle="None" Font-Bold="True" 
                    Font-Names="Lucida Handwriting" ForeColor="#990000" CssClass="style7" 
                    Height="29px" />
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></td>
        </tr>
        <tr>
            <td colspan="2" class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        </table></center>
</asp:Content>

