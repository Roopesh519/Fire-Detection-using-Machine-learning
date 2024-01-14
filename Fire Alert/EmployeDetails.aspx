<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EmployeDetails.aspx.cs" Inherits="EmployeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
    .style3
    {
        width: 326px;
        height: 30px;
            font-size: small;
        }
    .style4
    {
        height: 30px;
    }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            font-size: small;
        }
        .style7
        {
            height: 28px;
            font-size: small;
        }
        .style8
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">EMPLOYEE DETAILS</i></b></center></h2>

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

    <table class="style1">
    <tr>
        <td class="style8" colspan="2">
            <strong>Employee Details</strong></td>
    </tr>
    <tr class="style6">
        <td class="style2">
            Employee ID</td>
        <td>
            <asp:Label ID="lblEmployeeid" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Name</td>
        <td class="style5">
            <asp:TextBox ID="txtname" runat="server" CssClass="style6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red" 
                CssClass="style6"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Only Character" 
                ForeColor="Red" CssClass="style6" ValidationExpression="[a-z/sA-Z]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Phone</td>
        <td>
            <asp:TextBox ID="txtphone" runat="server" CssClass="style6"></asp:TextBox>
            <span class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Enter Phone no" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Enter Only Numbers" 
                ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </span>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Email</td>
        <td class="style4">
            <asp:TextBox ID="txtemail" runat="server" CssClass="style6"></asp:TextBox>
            <span class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Invalid Format" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </span>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Designation</td>
        <td>
            <asp:DropDownList ID="ddlDesignation" runat="server" Height="23px" 
                Width="130px" CssClass="style6">
                <asp:ListItem Selected="True">--Select Any--</asp:ListItem>
                <asp:ListItem>Staff</asp:ListItem>
                <asp:ListItem>Manager</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Qualification</td>
        <td>
            <asp:DropDownList ID="ddlQualification" runat="server" Height="23px" 
                Width="131px" CssClass="style6">
                <asp:ListItem Selected="True">--Select Any--</asp:ListItem>
                <asp:ListItem>PG</asp:ListItem>
                <asp:ListItem>UG</asp:ListItem>
                <asp:ListItem>PUC</asp:ListItem>
                <asp:ListItem>10TH</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSave" runat="server" Height="34px" onclick="btnSave_Click" 
                Text="SAVE" Width="70px" />
            <asp:Button ID="btnClear" runat="server" Height="31px" onclick="btnClear_Click" 
                Text="Clear" Width="64px" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

