<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

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
        width: 195px;
        height: 16px;
        font-size: small;
    }
    .style4
    {
        height: 16px;
    }
    .style5
    {
        font-size: large;
    }
    .style6
    {
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style5" colspan="2">
            Feedback</td>
    </tr>
    <tr>
        <td class="style6">
            Username</td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Feedback</td>
        <td>
            <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Date</td>
        <td class="style4">
            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                Text="Submit" />
        </td>
    </tr>
</table>
</asp:Content>

