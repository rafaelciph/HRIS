<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.vb" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table border="0" cellspacing="1" width="100%">
        <tr>
            <td colspan="2">
                User Profile&nbsp; <font color="#FF0000">
                <asp:Label ID="lblinfo" runat="server"></asp:Label>
                </font>
            </td>
        </tr>
        <tr>
            <td colspan="2" width="1">
            </td>
        </tr>
        <tr>
            <td width="5%">
                IDNO:</td>
            <td style="width: 93%">
                &nbsp;<asp:TextBox ID="txtidno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtidno" 
                    ErrorMessage="Enter Compassion Employee ID Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="5%" style="height: 32px">
                NAME:</td>
            <td style="width: 93%; height: 32px;">
                &nbsp;<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="5%">
                Email:</td>
            <td style="width: 93%">
&nbsp;<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Your Compassion Email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 24px" width="5%">
                Dept:</td>
            <td style="width: 93%; height: 24px;">
            &nbsp;<asp:DropDownList ID="DPLDept" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>CD</asp:ListItem>
                    <asp:ListItem>PID</asp:ListItem>
                    <asp:ListItem>PCD</asp:ListItem>
                    <asp:ListItem>MSD</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DPLDept" ErrorMessage="Select Department"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="5">
                &nbsp;</td>
            <td style="width: 93%">
                &nbsp;<asp:Button ID="cmdedit" runat="server" Text="Edit" Width="53px" />
&nbsp;<asp:Button ID="cmdSave" runat="server" Text="Save" Width="53px" />
&nbsp;<asp:Button ID="cmdcancel" runat="server" CausesValidation="False" 
                    PostBackUrl="~/Default.aspx" Text="Cancel" Width="53px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

