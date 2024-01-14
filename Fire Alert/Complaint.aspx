<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 109%;
        height: 242px;
    }
    .style2
    {
        height: 23px;
    }
    .style3
    {
        height: 30px;
    }
    .style4
    {
        font-size: large;
    }
    .style5
    {
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">COMPLAINT</i></b></center></h2>

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
        <td class="style4" colspan="2">
            Loadge Complaint</td>
    </tr>
    <tr class="style5">
        <td class="style2">
            Complaint Number</td>
        <td class="style2">
            <asp:Label ID="lblcomplaintno" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Description</td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="style5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtDescription" ErrorMessage="Enter Description" 
                ForeColor="Red" CssClass="style5"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="style5">
        <td class="style2">
            Date</td>
        <td class="style2">
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style3">
            <asp:Button ID="btncomplaint" runat="server" onclick="btncomplaint_Click" 
                Text="Complaint" />
            <asp:Button ID="btnClear" runat="server" Height="25px" onclick="btnClear_Click" 
                Text="Clear" Width="78px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

