<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ViewComplaint.aspx.cs" Inherits="ViewComplaint" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .borderless
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <strong style="font-size: large">View Complaint</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                 <asp:GridView ID="GridView1" 
                     CssClass="table table-striped table-borderless borderless" runat="server" AutoGenerateColumns="False"
                    Width="109%" Height="167px" >
   
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkdelete" runat="Server" AutoPostBack="true" CommandArgument='<%# Eval("[complaintid]") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField Visible="False">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("[ComplaintNo]") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                   
                    <asp:BoundField DataField="ComplaintNo" HeaderText="Complaint Number" />
                    <asp:BoundField DataField="description" HeaderText="Description" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                </Columns>
                    </asp:GridView>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Btnapprove" runat="server" onclick="Btnapprove_Click" 
                    Text="Approve" Height="25px" Width="71px" />
                <asp:Button ID="Btnreject" runat="server" Text="Reject" 
                    onclick="Btnreject_Click" Height="28px" Width="71px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

