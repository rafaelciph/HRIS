<%@ Page Title="" Language="VB"  AutoEventWireup="false" CodeFile="DatePicker.aspx.vb" Inherits="UsingCalendarControl_DatePicker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script language="javascript">
        function SetDate(dateValue, ctl) {
            thisForm = window.opener.document.forms[0].elements[ctl].value = dateValue;
            self.close();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender" 
            BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
            ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </div>
    </form>
</body>
</html>


