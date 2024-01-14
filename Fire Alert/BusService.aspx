<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="BusService.aspx.cs" Inherits="BusService" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 103%;
            height: 211px;
        }
    .style2
    {
    }
    .style3
    {
            width: 227px;
            height: 23px;
            font-size: small;
        }
    .style4
    {
            height: 23px;
            width: 479px;
        }
        .style5
        {
            font-size: large;
        }
        .style6
        {
            width: 479px;
        }
        .style7
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">BUS SERVICE</i></b></center></h2>

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

<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
    <table class="style1">
    <tr>
        <td class="style5" colspan="2">
            <strong>Bus Services</strong></td>
    </tr>
    <tr>
        <td class="style7">
            Bus Number</td>
        <td class="style6">
            <asp:DropDownList ID="ddlbusno" runat="server" Height="21px" Width="122px" 
                CssClass="style7">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlbusno" 
                ErrorMessage=" select bus Number" ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Date</td>
        <td class="style4">
            <asp:TextBox ID="txtDate" runat="server" CssClass="style7"></asp:TextBox>
             <asp:CalendarExtender ID="TxtDate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TxtDate" Format="yyyy-MM-dd">
                </asp:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Service Description</td>
        <td class="style6">
            <asp:TextBox ID="txtServiceDesc" runat="server" CssClass="style7" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtServiceDesc" ErrorMessage="Enter Service Description" 
                ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Amount</td>
        <td class="style4">
            <asp:TextBox ID="txtAmount" runat="server" CssClass="style7"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style6">
            <asp:Button ID="BtnSave" runat="server" Height="29px" onclick="BtnSave_Click" 
                Text="SAVE" Width="58px" />
&nbsp;
            <asp:Button ID="btnClear" runat="server" Height="26px" onclick="btnClear_Click" 
                Text="CLEAR" Width="68px" />
        </td>
    </tr>
</table>
</asp:Content>

