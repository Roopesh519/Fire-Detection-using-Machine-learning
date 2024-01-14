<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ViewComplaintStatus.aspx.cs" Inherits="ViewComplaintStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 111%;
        height: 395px;
    }
    .style2
    {
    }
    .style3
    {
        font-size: large;
    }
    .style4
    {
        width: 536px;
    }
    .style5
    {
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">VIEW COMPLAINT STATUS</i></b></center></h2>

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
        <td class="style3" colspan="2">
            <strong>View Complaint Status</strong></td>
    </tr>
    <tr>
        <td class="style5">
            Complaint Number</td>
        <td class="style4">
            <asp:TextBox ID="txtcomplaintno" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcomplaintno" 
                ErrorMessage="Enter Complaint no" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                Text="Search" />
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="557px" Height="207px">
                <Columns>
                    <asp:BoundField DataField="ComplaintNo" HeaderText="Complaint Number" />
                    <asp:BoundField DataField="description" HeaderText="Description" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

