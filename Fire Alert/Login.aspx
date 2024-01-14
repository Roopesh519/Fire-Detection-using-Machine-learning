<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
        }
        .style4 {
            width: 468px;
            text-align: center;
        }
        .style5 {
            width: 468px;
            text-align: center;
        }
        .style6 {
            width: 432px;
            font-family: "Lucida Calligraphy";
            text-align: center;
            font-size: medium;
        }
        
      .center-table {
         margin: 0 auto;
         text-align: center; /* Optionally center-align the table content */
         }
        
        
        
        .style7
        {
            width: 432px;
        }
        
        
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
<h2><center><b>
    <i style="font-style: normal; font-variant: inherit; text-decoration: underline; font-family: &quot;Bernard MT Condensed&quot;; font-size: 30px;">LOGIN</i></b></center></h2>
   
      <div class="center-table">
    <table class="center" 
              
              style="width: 79%; margin-left: 250px; margin-right: 250px;  font-family: 'Times New Roman', Times, serif; height: 259px; margin-right: 0px;">
    
        <tr>
        
            <td class="style6" >
                UserName</td>
            <td class="style5" style="text-align: left">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="User Name is compulsory" 
                    ForeColor="Red" style="text-align: center; font-size: small;"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Only Character Are Allowed" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z]*$" 
                    style="font-size: small"></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
        
            <td class="style6">
                Password</td>
            <td class="style5" style="text-align: left">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" 
                    style="text-align: left"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Please Enter The Password" 
                    ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <asp:Button ID="btnlogin" runat="server" Text="LOGIN" 
                    onclick="btnlogin_Click" BorderColor="Black" BorderStyle="None" 
                    Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="#990000" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="CLEAR" BorderColor="Black" BorderStyle="None" Font-Bold="True" 
                    Font-Names="Lucida Handwriting" ForeColor="#990000" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" 
                    onclick="LinkButton1_Click" PostBackUrl="~/registration.aspx">Register Now</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>

    </table>
    </div>
</asp:Content>