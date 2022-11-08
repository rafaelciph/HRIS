<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Attendance.aspx.vb" Inherits="HR_Attendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </cc1:ToolkitScriptManager>
        
<table class="style4">
    <tr>
        <td style="height: 25px; ">
            Select View:
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                style="margin-bottom: 0px" BackColor="#FFFFCC">
                <asp:ListItem Value="0">Daily Time Records</asp:ListItem>
                <asp:ListItem Value="1">Leave Requests</asp:ListItem>
                <asp:ListItem Value="2">Field Work</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;
            From&nbsp;
            <asp:TextBox ID="txtfrom" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC"></asp:TextBox> 
            &nbsp;To&nbsp;
            <asp:TextBox ID="txtto" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC"></asp:TextBox> 
            <cc1:CalendarExtender ID="txtto_CalendarExtender" TargetControlID="txtto" 
          runat="server" Format="MM/dd/yyyy" PopupPosition="BottomRight">
        </cc1:CalendarExtender>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="OK" />
            <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="69px"></asp:TextBox>
        </td>
        <td style="height: 25px; text-align: right; width: 120px;">
            &nbsp;</td>
        <td style="height: 25px; text-align: right;">
            <asp:Label ID="lblFY" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblFY2" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblidno" runat="server" Visible="False"></asp:Label>
            &nbsp;
            </td></tr>
</table><cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtfrom" 
          runat="server" Animated="False" Format="MM/dd/yyyy" 
          PopupPosition="BottomRight">
        </cc1:CalendarExtender>
<table class="style4">
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" 
                        GridLines="Vertical" PageSize="31" Width="454px" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
                        BorderWidth="1px" 
                        EmptyDataText="Record not found, Please select the correct date" 
                        AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="IDNo" SortExpression="IDNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IDNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date" SortExpression="TDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TDate","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Day" SortExpression="TDay">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TDay") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TDay") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Time IN" SortExpression="TIn">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TIn") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TIn") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TOut" HeaderText="Time OUT" SortExpression="TOut" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT IDNo, TDate, TDay, TIn, TOut FROM HRDS_InOut WHERE (TDate &gt;= @TDate) AND (TDate &lt;= @TDate2) AND (IDNo = @IDNo) ORDER BY TDate">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="txtfrom" Name="TDate" PropertyName="Text" 
                                Type="DateTime" />
                            <asp:ControlParameter ControlID="txtto" Name="TDate2" PropertyName="Text" 
                                Type="DateTime" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        Caption="Leave Balance Status" CellPadding="4" DataSourceID="SqlDS_LeaveBal" 
                        ForeColor="Black" GridLines="Vertical">
                        <EditItemTemplate>
                            IDNo:
                            <asp:TextBox ID="IDNoTextBox" runat="server" Text='<%# Bind("IDNo") %>' />
                            <br />
                            Deptcode:
                            <asp:TextBox ID="DeptcodeTextBox" runat="server" 
                                Text='<%# Bind("Deptcode") %>' />
                            <br />
                            Validity:
                            <asp:TextBox ID="ValidityTextBox" runat="server" 
                                Text='<%# Bind("Validity") %>' />
                            <br />
                            SLCredits:
                            <asp:TextBox ID="SLCreditsTextBox" runat="server" 
                                Text='<%# Bind("SLCredits") %>' />
                            <br />
                            SLUsed:
                            <asp:TextBox ID="SLUsedTextBox" runat="server" Text='<%# Bind("SLUsed") %>' />
                            <br />
                            SLBalance:
                            <asp:TextBox ID="SLBalanceTextBox" runat="server" 
                                Text='<%# Bind("SLBalance") %>' />
                            <br />
                            VLCredits:
                            <asp:TextBox ID="VLCreditsTextBox" runat="server" 
                                Text='<%# Bind("VLCredits") %>' />
                            <br />
                            VLUsed:
                            <asp:TextBox ID="VLUsedTextBox" runat="server" Text='<%# Bind("VLUsed") %>' />
                            <br />
                            VLBalance:
                            <asp:TextBox ID="VLBalanceTextBox" runat="server" 
                                Text='<%# Bind("VLBalance") %>' />
                            <br />
                            CLCredits:
                            <asp:TextBox ID="CLCreditsTextBox" runat="server" 
                                Text='<%# Bind("CLCredits") %>' />
                            <br />
                            CLUsed:
                            <asp:TextBox ID="CLUsedTextBox" runat="server" Text='<%# Bind("CLUsed") %>' />
                            <br />
                            CLBalance:
                            <asp:TextBox ID="CLBalanceTextBox" runat="server" 
                                Text='<%# Bind("CLBalance") %>' />
                            <br />
                            ELCredits:
                            <asp:TextBox ID="ELCreditsTextBox" runat="server" 
                                Text='<%# Bind("ELCredits") %>' />
                            <br />
                            ELUsed:
                            <asp:TextBox ID="ELUsedTextBox" runat="server" Text='<%# Bind("ELUsed") %>' />
                            <br />
                            ELBalance:
                            <asp:TextBox ID="ELBalanceTextBox" runat="server" 
                                Text='<%# Bind("ELBalance") %>' />
                            <br />
                            PLCredits:
                            <asp:TextBox ID="PLCreditsTextBox" runat="server" 
                                Text='<%# Bind("PLCredits") %>' />
                            <br />
                            PLUsed:
                            <asp:TextBox ID="PLUsedTextBox" runat="server" Text='<%# Bind("PLUsed") %>' />
                            <br />
                            PLBalance:
                            <asp:TextBox ID="PLBalanceTextBox" runat="server" 
                                Text='<%# Bind("PLBalance") %>' />
                            <br />
                            BLCredits:
                            <asp:TextBox ID="BLCreditsTextBox" runat="server" 
                                Text='<%# Bind("BLCredits") %>' />
                            <br />
                            BLUsed:
                            <asp:TextBox ID="BLUsedTextBox" runat="server" Text='<%# Bind("BLUsed") %>' />
                            <br />
                            BLBalance:
                            <asp:TextBox ID="BLBalanceTextBox" runat="server" 
                                Text='<%# Bind("BLBalance") %>' />
                            <br />
                            BrvCredits:
                            <asp:TextBox ID="BrvCreditsTextBox" runat="server" 
                                Text='<%# Bind("BrvCredits") %>' />
                            <br />
                            BrvUsed:
                            <asp:TextBox ID="BrvUsedTextBox" runat="server" Text='<%# Bind("BrvUsed") %>' />
                            <br />
                            BrvBalance:
                            <asp:TextBox ID="BrvBalanceTextBox" runat="server" 
                                Text='<%# Bind("BrvBalance") %>' />
                            <br />
                            VLOPCredits:
                            <asp:TextBox ID="VLOPCreditsTextBox" runat="server" 
                                Text='<%# Bind("VLOPCredits") %>' />
                            <br />
                            VLOPUsed:
                            <asp:TextBox ID="VLOPUsedTextBox" runat="server" 
                                Text='<%# Bind("VLOPUsed") %>' />
                            <br />
                            VLOPBalance:
                            <asp:TextBox ID="VLOPBalanceTextBox" runat="server" 
                                Text='<%# Bind("VLOPBalance") %>' />
                            <br />
                            AddedBy:
                            <asp:TextBox ID="AddedByTextBox" runat="server" Text='<%# Bind("AddedBy") %>' />
                            <br />
                            DateAdded:
                            <asp:TextBox ID="DateAddedTextBox" runat="server" 
                                Text='<%# Bind("DateAdded") %>' />
                            <br />
                            &nbsp;
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            IDNo:
                            <asp:TextBox ID="IDNoTextBox" runat="server" Text='<%# Bind("IDNo") %>' />
                            <br />
                            Deptcode:
                            <asp:TextBox ID="DeptcodeTextBox" runat="server" 
                                Text='<%# Bind("Deptcode") %>' />
                            <br />
                            Validity:
                            <asp:TextBox ID="ValidityTextBox" runat="server" 
                                Text='<%# Bind("Validity") %>' />
                            <br />
                            SLCredits:
                            <asp:TextBox ID="SLCreditsTextBox" runat="server" 
                                Text='<%# Bind("SLCredits") %>' />
                            <br />
                            SLUsed:
                            <asp:TextBox ID="SLUsedTextBox" runat="server" Text='<%# Bind("SLUsed") %>' />
                            <br />
                            SLBalance:
                            <asp:TextBox ID="SLBalanceTextBox" runat="server" 
                                Text='<%# Bind("SLBalance") %>' />
                            <br />
                            VLCredits:
                            <asp:TextBox ID="VLCreditsTextBox" runat="server" 
                                Text='<%# Bind("VLCredits") %>' />
                            <br />
                            VLUsed:
                            <asp:TextBox ID="VLUsedTextBox" runat="server" Text='<%# Bind("VLUsed") %>' />
                            <br />
                            VLBalance:
                            <asp:TextBox ID="VLBalanceTextBox" runat="server" 
                                Text='<%# Bind("VLBalance") %>' />
                            <br />
                            CLCredits:
                            <asp:TextBox ID="CLCreditsTextBox" runat="server" 
                                Text='<%# Bind("CLCredits") %>' />
                            <br />
                            CLUsed:
                            <asp:TextBox ID="CLUsedTextBox" runat="server" Text='<%# Bind("CLUsed") %>' />
                            <br />
                            CLBalance:
                            <asp:TextBox ID="CLBalanceTextBox" runat="server" 
                                Text='<%# Bind("CLBalance") %>' />
                            <br />
                            ELCredits:
                            <asp:TextBox ID="ELCreditsTextBox" runat="server" 
                                Text='<%# Bind("ELCredits") %>' />
                            <br />
                            ELUsed:
                            <asp:TextBox ID="ELUsedTextBox" runat="server" Text='<%# Bind("ELUsed") %>' />
                            <br />
                            ELBalance:
                            <asp:TextBox ID="ELBalanceTextBox" runat="server" 
                                Text='<%# Bind("ELBalance") %>' />
                            <br />
                            PLCredits:
                            <asp:TextBox ID="PLCreditsTextBox" runat="server" 
                                Text='<%# Bind("PLCredits") %>' />
                            <br />
                            PLUsed:
                            <asp:TextBox ID="PLUsedTextBox" runat="server" Text='<%# Bind("PLUsed") %>' />
                            <br />
                            PLBalance:
                            <asp:TextBox ID="PLBalanceTextBox" runat="server" 
                                Text='<%# Bind("PLBalance") %>' />
                            <br />
                            BLCredits:
                            <asp:TextBox ID="BLCreditsTextBox" runat="server" 
                                Text='<%# Bind("BLCredits") %>' />
                            <br />
                            BLUsed:
                            <asp:TextBox ID="BLUsedTextBox" runat="server" Text='<%# Bind("BLUsed") %>' />
                            <br />
                            BLBalance:
                            <asp:TextBox ID="BLBalanceTextBox" runat="server" 
                                Text='<%# Bind("BLBalance") %>' />
                            <br />
                            BrvCredits:
                            <asp:TextBox ID="BrvCreditsTextBox" runat="server" 
                                Text='<%# Bind("BrvCredits") %>' />
                            <br />
                            BrvUsed:
                            <asp:TextBox ID="BrvUsedTextBox" runat="server" Text='<%# Bind("BrvUsed") %>' />
                            <br />
                            BrvBalance:
                            <asp:TextBox ID="BrvBalanceTextBox" runat="server" 
                                Text='<%# Bind("BrvBalance") %>' />
                            <br />
                            VLOPCredits:
                            <asp:TextBox ID="VLOPCreditsTextBox" runat="server" 
                                Text='<%# Bind("VLOPCredits") %>' />
                            <br />
                            VLOPUsed:
                            <asp:TextBox ID="VLOPUsedTextBox" runat="server" 
                                Text='<%# Bind("VLOPUsed") %>' />
                            <br />
                            VLOPBalance:
                            <asp:TextBox ID="VLOPBalanceTextBox" runat="server" 
                                Text='<%# Bind("VLOPBalance") %>' />
                            <br />
                            AddedBy:
                            <asp:TextBox ID="AddedByTextBox" runat="server" Text='<%# Bind("AddedBy") %>' />
                            <br />
                            DateAdded:
                            <asp:TextBox ID="DateAddedTextBox" runat="server" 
                                Text='<%# Bind("DateAdded") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="style4">
                                <tr>
                                    <td style="width: 97px">
                                        <b>Leave Type</b></td>
                                    <td style="width: 83px">
                                        <b>Credit</b></td>
                                    <td style="width: 80px">
                                        <b>Used</b></td>
                                    <td class="style2" style="width: 152px; font-weight: bold">
                                        Balance</td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                        <strong>SL</strong></td>
                                    <td style="width: 83px">
                                        <asp:Label ID="SLCreditsLabel" runat="server" Text='<%# Bind("SLCredits") %>' />
                                    </td>
                                    <td style="width: 80px">
                                        <asp:Label ID="SLUsedLabel" runat="server" Text='<%# Bind("SLUsed") %>' />
                                    </td>
                                    <td class="style2" style="width: 152px">
                                        <asp:Label ID="SLBalanceLabel" runat="server" Text='<%# Bind("SLBalance") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                        <strong>VL</strong></td>
                                    <td style="width: 83px">
                                        <asp:Label ID="VLCreditsLabel" runat="server" Text='<%# Bind("VLCredits") %>' />
                                    </td>
                                    <td style="width: 80px">
                                        <asp:Label ID="VLUsedLabel" runat="server" Text='<%# Bind("VLUsed") %>' />
                                    </td>
                                    <td class="style2" style="width: 152px">
                                        <asp:Label ID="VLBalanceLabel" runat="server" Text='<%# Bind("VLBalance") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                        <strong>CL</strong></td>
                                    <td style="width: 83px">
                                        <asp:Label ID="CLCreditsLabel" runat="server" Text='<%# Bind("CLCredits") %>' />
                                    </td>
                                    <td style="width: 80px">
                                        <asp:Label ID="CLUsedLabel" runat="server" Text='<%# Bind("CLUsed") %>' />
                                    </td>
                                    <td class="style2" style="width: 152px">
                                        <asp:Label ID="CLBalanceLabel" runat="server" Text='<%# Bind("CLBalance") %>' />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:FormView>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        Caption="Leave Requests History " CellPadding="4" DataKeyNames="leaveid" 
                        DataSourceID="SqlDS_LeaveRequestHistory" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:TemplateField HeaderText="Start Date" SortExpression="StartDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="End Date" SortExpression="Enddate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Enddate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Enddate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DebitDays" HeaderText="Debit Days" 
                                SortExpression="DebitDays" />
                            <asp:BoundField DataField="LeaveType" HeaderText="Type" 
                                SortExpression="LeaveType" />
                            <asp:BoundField DataField="Paycode" HeaderText="Paycode" 
                                SortExpression="Paycode" />
                            <asp:BoundField DataField="DayType" HeaderText="Day Type" 
                                SortExpression="DayType" />
                            <asp:BoundField DataField="Approval" HeaderText="Approved" 
                                SortExpression="Approval" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:TemplateField HeaderText="Validity" SortExpression="Validity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Validity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Validity", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="leaveid" DataSourceID="SqlDS_LeaveRequestWaiting" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        Caption="Requests waiting for Approval" CellPadding="4" ForeColor="Black" 
                        GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:TemplateField HeaderText="StartDate" SortExpression="StartDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Enddate" SortExpression="Enddate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Enddate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Enddate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DebitDays" HeaderText="DebitDays" 
                                SortExpression="DebitDays" />
                            <asp:BoundField DataField="LeaveType" HeaderText="LeaveType" 
                                SortExpression="LeaveType" />
                            <asp:BoundField DataField="Paycode" HeaderText="Paycode" 
                                SortExpression="Paycode" />
                            <asp:BoundField DataField="DayType" HeaderText="DayType" 
                                SortExpression="DayType" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDS_LeaveBal" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM HRDS_Leave_Balance WHERE (IDNo = @IDNo) AND (Validity = @Validity)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY" Name="Validity" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_LeaveRequestHistory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT * FROM HRDS_Leave_Tran WHERE (IDNo = @IDNo) AND (Validity = @Validity) AND (Approval = 'Y')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY" Name="Validity" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_LeaveRequestWaiting" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT * FROM HRDS_Leave_Tran WHERE (IDNo = @IDNo) AND (Validity = @Validity) AND (Approval = '')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY" Name="Validity" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        Caption="Field Work Requests History" CellPadding="4" 
                        DataSourceID="SqlDS_FWHistory" ForeColor="Black" GridLines="Vertical" 
                        PageSize="15">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:TemplateField HeaderText="StartDate" SortExpression="StartDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EndDate" SortExpression="EndDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EndDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date CL Exprire" SortExpression="DateCLExprire">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DateCLExprire") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" 
                                        Text='<%# Bind("DateCLExprire", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CLValue_" HeaderText="CL Value" 
                                SortExpression="CLValue_" />
                            <asp:BoundField DataField="Approval" HeaderText="Approval" 
                                SortExpression="Approval" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:TemplateField HeaderText="ValidityDate" SortExpression="ValidityDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ValidityDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" 
                                        Text='<%# Bind("ValidityDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        Caption="Field Work Requests for Approval" CellPadding="4" 
                        DataSourceID="SqlDS_FWReqHistory" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:TemplateField HeaderText="StartDate" SortExpression="StartDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EndDate" SortExpression="EndDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EndDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="StartTime" HeaderText="StartTime" 
                                SortExpression="StartTime" />
                            <asp:BoundField DataField="EndTime" HeaderText="EndTime" 
                                SortExpression="EndTime" />
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:BoundField DataField="CLValue_" HeaderText="CL Credit" 
                                SortExpression="CLValue_" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDS_FWHistory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SELECT * FROM HRDS_OB_Tran WHERE (IDNo = @IDNo) AND (StartDate &gt;= @startdate) AND (EndDate &lt;= @enddate) AND (Approval = 'Y') order by startdate">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY2" Name="startdate" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY" Name="enddate" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_FWReqHistory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT * FROM HRDS_OB_Tran WHERE (IDNo = @IDNo)  AND (Approval = '')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <br />
                <asp:View ID="View4" runat="server">
                    CL Exp
                </asp:View>
                <asp:View ID="View5" runat="server">
                Request for Approval
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
<br />
</asp:Content>

