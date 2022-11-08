<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Account_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            text-align: center;
            color: #FFFFFF;
            font-family: Calibri;
        }
        .style5
        {
            width: 240px;
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" width = 100%>
            <tr>
                <td class="style3" style="background-color: #3B5998">
                    </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:Login ID="Login1" runat="server" align = center 
                        style="font-family: Calibri">
                    </asp:Login>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="background-position: center center; background-color: #3B5998" 
                    class="style4">
                    <img class="style5" src="../Images/sponsor-a-child.png" /><br />
                    Compassion Pilipinas</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
