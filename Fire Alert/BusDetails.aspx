<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="BusDetails.aspx.cs" Inherits="BusDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 111%;
            height: 339px;
        }
    .style3
    {
        width: 176px;
    }
    .style4
    {
        width: 132px;
    }
        .style6
        {
            height: 47px;
        }
        .style7
        {
            width: 176px;
            height: 47px;
        }
        .style8
        {
            width: 132px;
            height: 47px;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            font-size: small;
        }
        .style11
        {
            width: 132px;
            font-size: small;
        }
        .style12
        {
            font-size: small;
            width: 182px;
        }
        .style13
        {
            height: 47px;
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">BUS DETAILS</i></b></center></h2>

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
        <td class="style9" colspan="4">
            Enter Bus Details</td>
    </tr>
    <tr>
        <td class="style12">
            Bus Number</td>
        <td class="style3">
            <asp:TextBox ID="txtbusno" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Chasis Number</td>
        <td>
            <asp:TextBox ID="txtchasisno" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Wheel Base</td>
        <td class="style3">
            <asp:TextBox ID="txtwheelbase" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Water Tank Capacity</td>
        <td>
            <asp:TextBox ID="txtwatertankcapacity" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Water Tank Material</td>
        <td class="style3">
            <asp:TextBox ID="txtwatertankmaterial" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Man Hole(mm)</td>
        <td>
            <asp:TextBox ID="txtmanhole" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Pump Type</td>
        <td class="style3">
            <asp:TextBox ID="txtpumptype" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Pump Discharge</td>
        <td>
            <asp:TextBox ID="txtpumpdischarge" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Battery</td>
        <td class="style3">
            <asp:TextBox ID="txtbattery" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Make</td>
        <td>
            <asp:DropDownList ID="ddlmake" runat="server" Height="16px" Width="123px" 
                CssClass="style10">
                <asp:ListItem Selected="True">--Select Any--</asp:ListItem>
                <asp:ListItem>TATA</asp:ListItem>
                <asp:ListItem>Mahindra</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Overall Length</td>
        <td class="style3">
            <asp:TextBox ID="txtoveralllength" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Overall Width</td>
        <td>
            <asp:TextBox ID="txtoverallwidth" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Overall Height</td>
        <td class="style3">
            <asp:TextBox ID="txtoverallheight" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Body Roof</td>
        <td>
            <asp:TextBox ID="txtbodyroof" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Body Door Type</td>
        <td class="style3">
            <asp:TextBox ID="txtdoortype" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style11">
            Body Locks</td>
        <td>
            <asp:TextBox ID="txtbodylocks" runat="server" CssClass="style10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Delivery(mm)</td>
        <td class="style3">
            <asp:TextBox ID="txtdelivery" runat="server" CssClass="style10"></asp:TextBox>
        </td>
        <td class="style4">
            <span class="style10"></td>
        <td>
            </span></td>
    </tr>
    <tr>
        <td class="style13">
            </td>
        <td class="style7">
            <asp:Button ID="btnSave" runat="server" Height="34px" onclick="btnSave_Click" 
                Text="Save" Width="95px" />
            <asp:Button ID="btnclear" runat="server" Height="32px" Text="Clear" 
                Width="75px" onclick="btnclear_Click" />
        </td>
        <td class="style8">
            </td>
        <td class="style6">
            </td>
    </tr>
</table>
</asp:Content>

