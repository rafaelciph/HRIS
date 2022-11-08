<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Request.aspx.vb" Inherits="Req_Request" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>
<table class="style4">
    <tr>
        <td style="height: 25px; ">
            Select View:
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                style="margin-bottom: 0px" BackColor="#FFFFCC">
                <asp:ListItem Value="0">Leave</asp:ListItem>
                <asp:ListItem Value="1">Field Work</asp:ListItem>
                <asp:ListItem Value="2">Time In/Out</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtfrom" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC" 
                Visible="False"></asp:TextBox>
            <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtfrom" 
          runat="server" Animated="False" Format="MM/dd/yyyy" 
          PopupPosition="BottomRight">
            </cc1:CalendarExtender>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtto" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC" 
                Visible="False"></asp:TextBox>
            <cc1:CalendarExtender ID="txtto_CalendarExtender" TargetControlID="txtto" 
          runat="server" Format="MM/dd/yyyy" PopupPosition="BottomRight">
            </cc1:CalendarExtender>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="OK" Visible="False" />
            <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="78px"></asp:TextBox>
        </td>
        <td style="height: 25px; text-align: right; width: 120px;">
            &nbsp;</td>
        <td style="height: 25px; text-align: right;">
            <asp:Label ID="lblprofilename" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbldept" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblFY" runat="server"></asp:Label>
            <asp:Label ID="lblFY2" runat="server"></asp:Label>
            <asp:Label ID="lblidno" runat="server" Visible="False"></asp:Label>
            &nbsp;
            </td>
    </tr>
</table>
<table class="style4">
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <br />
                    <strong>Leave Application Page</strong><br />&nbsp;<table class="style4">
                        <tr>
                            <td style="width: 93px">
                                Start Date</td>
                            <td style="width: 101px">
                                End Date</td>
                            <td style="width: 116px">
                                Day Type</td>
                            <td style="width: 257px">
                                Approver</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                <asp:TextBox ID="txtstartdate" runat="server" align="absmiddle" 
                                    BackColor="#FFFFCC" Height="16px" Width="67px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtstartdate_CalendarExtender" runat="server" 
                                    Animated="False" Format="MM/dd/yyyy" PopupPosition="BottomRight" 
                                    TargetControlID="txtstartdate"></cc1:CalendarExtender>
                            </td>
                            <td style="width: 101px">
                                <asp:TextBox ID="txtenddate" runat="server" align="absmiddle" 
                                    BackColor="#FFFFCC" Height="15px" Width="67px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtenddate_CalendarExtender" runat="server" 
                                    Animated="False" Format="MM/dd/yyyy" PopupPosition="BottomRight" 
                                    TargetControlID="txtenddate"></cc1:CalendarExtender>
                            </td>
                            <td style="width: 116px">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                    BackColor="#FFFFCC">
                                    <asp:ListItem>Whole Day</asp:ListItem>
                                    <asp:ListItem>Half Day-AM</asp:ListItem>
                                    <asp:ListItem>Half Day-PM</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 257px">
                                <asp:DropDownList ID="DropDownList5" runat="server" 
                                    DataSourceID="SqlDataSourceapprover" DataTextField="NameSup" 
                                    DataValueField="IDno" BackColor="#FFFFCC" AutoPostBack="True">
                                </asp:DropDownList>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td style="width: 116px">
                                &nbsp;</td>
                            <td style="width: 257px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                No. of Days</td>
                            <td style="width: 101px">
                                Leave Type</td>
                            <td style="width: 116px">
                                Pay Code</td>
                            <td style="width: 257px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                <asp:TextBox ID="txtnoofdays" runat="server" BackColor="#FFFFCC" Width="62px"></asp:TextBox>
                            </td>
                            <td style="width: 101px">
                                <asp:DropDownList ID="DropDownList6" runat="server" BackColor="#FFFFCC" 
                                    AutoPostBack="True">
                                    <asp:ListItem>SL</asp:ListItem>
                                    <asp:ListItem>VL</asp:ListItem>
                                    <asp:ListItem>CL</asp:ListItem>
                                    <asp:ListItem>ML</asp:ListItem>
                                    <asp:ListItem>PL</asp:ListItem>
                                    <asp:ListItem>Brv</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 116px">
                                <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#FFFFCC">
                                    <asp:ListItem>With Pay</asp:ListItem>
                                    <asp:ListItem>Without Pay</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 257px">
                                <asp:Button ID="Button2" runat="server" Text="Calculate" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Visible="False">
                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                        CellPadding="4" DataSourceID="SqlDataSourceOBTrans" ForeColor="Black" 
                                        GridLines="Vertical" PageSize="5" AllowPaging="True" 
                                        Caption="Available  CL Credit">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                                            <asp:TemplateField HeaderText="Start Date" SortExpression="StartDate">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="End Date" SortExpression="EndDate">
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
                                            <asp:TemplateField HeaderText="CL Credits" SortExpression="CLValue_">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CLValue_") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CLValue_") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                Reason</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td style="width: 116px">
                                &nbsp;</td>
                            <td style="width: 257px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:TextBox ID="txtreason" runat="server" BackColor="#FFFFCC" Height="89px" 
                                    TextMode="MultiLine" Width="319px"></asp:TextBox>
                                <br />
                                <asp:Button ID="cmdnew" runat="server" Text="New" Width="73px" />
                                &nbsp;<asp:Button ID="cmdsave" runat="server" Text="Save" Width="73px" />
                                &nbsp;<asp:Button ID="cmdcancel" runat="server" Text="Cancel" Width="73px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataKeyNames="leaveid" DataSourceID="SqlDataSourceLeaveReq" 
                        ForeColor="Black" GridLines="Vertical" PageSize="7" 
                        Caption="Requests waiting for Approval">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:TemplateField HeaderText="Start Date" SortExpression="StartDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="End date" SortExpression="Enddate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("Enddate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("Enddate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DebitDays" HeaderText="No. Of Days" 
                                SortExpression="DebitDays" />
                            <asp:BoundField DataField="LeaveType" HeaderText="Leave Type" 
                                SortExpression="LeaveType" />
                            <asp:BoundField DataField="Paycode" HeaderText="Paycode" 
                                SortExpression="Paycode" />
                            <asp:BoundField DataField="DayType" HeaderText="Day Type" 
                                SortExpression="DayType" />
                            <asp:BoundField DataField="Approval" HeaderText="Approval" 
                                SortExpression="Approval" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:TemplateField HeaderText="Date Applied" SortExpression="DateAdded">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("DateAdded") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("DateAdded", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Validity" SortExpression="Validity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("Validity") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("Validity", "{0:d}") %>'></asp:Label>
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
                    <asp:SqlDataSource ID="SqlDataSourceOBTrans" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        SelectCommand="SELECT ID, IDNo, Deptcode, StartDate, EndDate, DateCLExprire, AssignedCL, BalCL, UseCL, UseCLDate, UseCLReason, StartTime, EndTime, Type, CLValue, CLValue_, Approver, Approval, Reason, DateAdded, AddedBy, ApprovedBy, DateApproved, Processed, DateProcessed, ValidityDate, Status, SaveStats, SaveAssignedCL FROM HRDS_OB_Tran WHERE (IDNo = @IDNo) AND (ValidityDate = @ValidityDate) AND (Status = '0') AND (NOT (CLValue = 0)) AND (Approval = 'Y')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="lblFY" Name="ValidityDate" PropertyName="Text" 
                                Type="DateTime" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceapprover" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        SelectCommand="SELECT IDNo, LastName + '  ' + FirstName AS NameSup, EMailAdd FROM HRDS_Employee_Mast WHERE (Approve = @Approve)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Y" Name="Approve" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceLeaveReq" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT leaveid, IDNo, Deptcode, StartDate, Enddate, DebitDays, LeaveType, Paycode, DayType, Approver, Approval, Reason, DateAdded, AddedBy, ApprovedBy, DateApproved, Processed, DateProcessed, Validity, IDOB FROM HRDS_Leave_Tran WHERE (IDNo = @IDNo) AND (Validity = @Validity) AND (Approval = '')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" />
                            <asp:ControlParameter ControlID="lblFY" Name="Validity" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <table class="style4">
                        <tr style="font-size: x-small">
                            <td style="width: 94px">
                                Start Date</td>
                            <td style="width: 96px">
                                End Date</td>
                            <td style="width: 99px">
                                # of Sun/Sat</td>
                            <td style="width: 99px">
                                # of Holiday</td>
                            <td style="width: 125px">
                                Total CL Credits</td>
                            <td>
                                Approver</td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                <asp:TextBox ID="txtstartdatefw" runat="server" align="absmiddle" 
                                    BackColor="#FFFFCC" Height="16px" Width="67px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtstartdatefw_CalendarExtender" runat="server" 
                                    Animated="False" Format="MM/dd/yyyy" PopupPosition="BottomRight" 
                                    TargetControlID="txtstartdatefw"></cc1:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtstartdatefw" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 96px">
                                <asp:TextBox ID="txtenddatefw" runat="server" align="absmiddle" 
                                    BackColor="#FFFFCC" Height="15px" Width="67px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtenddatefw_CalendarExtender" runat="server" 
                                    Animated="False" Format="MM/dd/yyyy" PopupPosition="BottomRight" 
                                    TargetControlID="txtenddatefw"></cc1:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtenddatefw" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 50px">
                                <asp:TextBox ID="txttotweekend" runat="server" Width="34px" BackColor="#FFFFCC" 
                                    Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 99px">
                                <asp:TextBox ID="txtnohol" runat="server" Width="34px" BackColor="#FFFFCC" 
                                    Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 125px">
                                <asp:TextBox ID="txttotcl" runat="server" Width="34px" BackColor="#FFFFCC" 
                                    Enabled="False" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                                    BackColor="#FFFFCC" DataSourceID="SqlDataSourceapprover0" 
                                    DataTextField="NameSup" DataValueField="IDno">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 94px; height: 25px; font-size: x-small;">
                                CL Expiry Date</td>
                            <td style="height: 25px;" colspan="2">
                                &nbsp;<asp:Label ID="Label21" runat="server" style="font-size: x-small"></asp:Label>
                                </td>
                            <td style="width: 99px; height: 25px;">
                                </td>
                            <td colspan="2" style="height: 25px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                <asp:Button ID="Button3" runat="server" style="margin-left: 0px" Text="calc..." 
                                    Width="68px" />
                            </td>
                            <td style="width: 96px">
                                &nbsp;</td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                Reasons</td>
                            <td style="width: 96px">
                                <asp:Label ID="Label20" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <asp:TextBox ID="txtreasonfw" runat="server" BackColor="#FFFFCC" Height="89px" 
                                    TextMode="MultiLine" Width="373px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtreasonfw" ErrorMessage="*"></asp:RequiredFieldValidator>
                                &nbsp;<br /><asp:Button ID="cmdnew0" runat="server" CausesValidation="False" 
                                    Text="New" Width="73px" />
                                &nbsp;<asp:Button ID="cmdsave0" runat="server" Text="Save" Width="73px" 
                                    Enabled="False" />
                                &nbsp;<asp:Button ID="cmdcancel0" runat="server" Text="Cancel" Width="73px" 
                                    CausesValidation="False" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GVFieldWork" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="SqlDataSourceFW" ForeColor="Black" GridLines="Vertical" 
                        Caption="Requests waiting for Approval">
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
                            <asp:BoundField DataField="CLValue_" HeaderText="CL Credits" 
                                SortExpression="CLValue_" />
                            <asp:TemplateField HeaderText="CL Exprired" SortExpression="DateCLExprire">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DateCLExprire") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" 
                                        Text='<%# Bind("DateCLExprire", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Approver" HeaderText="Approver" 
                                SortExpression="Approver" />
                            <asp:BoundField DataField="Approval" HeaderText="Approval" 
                                SortExpression="Approval" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:TemplateField HeaderText="Validity" SortExpression="ValidityDate">
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
                    <asp:SqlDataSource ID="SqlDataSourceFW" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SELECT ID, IDNo, Deptcode, StartDate, EndDate, DateCLExprire, AssignedCL, BalCL, UseCL, UseCLDate, UseCLReason, StartTime, EndTime, Type, CLValue, CLValue_, Approver, Approval, Reason, DateAdded, AddedBy, ApprovedBy, DateApproved, Processed, DateProcessed, ValidityDate, Status, SaveStats, SaveAssignedCL FROM HRDS_OB_Tran WHERE (IDNo = @IDNo) AND (ValidityDate = @ValidityDate) AND (Approval = '')" 
                        InsertCommand="spInsertHRDSOB" InsertCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="IDNo" Type="String" />
                            <asp:Parameter Name="Deptcode" Type="String" />
                            <asp:Parameter Name="StartDate" Type="DateTime" />
                            <asp:Parameter Name="EndDate" Type="DateTime" />
                            <asp:Parameter Name="DateCLExprire" Type="DateTime" />
                            <asp:Parameter Name="AssignedCL" Type="Decimal" />
                            <asp:Parameter Name="BalCL" Type="Decimal" />
                            <asp:Parameter Name="UseCL" Type="String" />
                            <asp:Parameter Name="UseCLDate" Type="DateTime" />
                            <asp:Parameter Name="UseCLReason" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="CLValue" Type="Decimal" />
                            <asp:Parameter Name="CLValue_" Type="Decimal" />
                            <asp:Parameter Name="Approver" Type="String" />
                            <asp:Parameter Name="Reason" Type="String" />
                            <asp:Parameter Name="DateAdded" Type="DateTime" />
                            <asp:Parameter Name="AddedBy" Type="String" />
                            <asp:Parameter Name="DateApproved" Type="DateTime" />
                            <asp:Parameter Name="Processed" Type="String" />
                            <asp:Parameter Name="DateProcessed" />
                            <asp:Parameter Name="ValidityDate" Type="DateTime" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="SaveStats" Type="String" />
                            <asp:Parameter Name="SaveAssignedCL" Type="Decimal" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="lblFY" Name="ValidityDate" PropertyName="Text" 
                                Type="DateTime" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceapprover0" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT IDNo, LastName + '  ' + FirstName AS NameSup, EMailAdd FROM HRDS_Employee_Mast WHERE (Approve = @Approve)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Y" Name="Approve" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="lookupOB" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SelectHRDSOB" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="txtstartdatefw" Name="StartDate" 
                                PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="txtenddatefw" Name="EndDate" 
                                PropertyName="Text" Type="DateTime" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;<asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="lookupOB" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                            <asp:BoundField DataField="StartDate" HeaderText="StartDate" 
                                SortExpression="StartDate" />
                            <asp:BoundField DataField="EndDate" HeaderText="EndDate" 
                                SortExpression="EndDate" />
                            <asp:BoundField DataField="DateCLExprire" HeaderText="DateCLExprire" 
                                SortExpression="DateCLExprire" />
                            <asp:BoundField DataField="AssignedCL" HeaderText="AssignedCL" 
                                SortExpression="AssignedCL" />
                            <asp:BoundField DataField="CLValue_" HeaderText="CLValue_" 
                                SortExpression="CLValue_" />
                            <asp:BoundField DataField="Approver" HeaderText="Approver" 
                                SortExpression="Approver" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:BoundField DataField="ValidityDate" HeaderText="ValidityDate" 
                                SortExpression="ValidityDate" />
                        </Columns>
                    </asp:GridView>
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    <table class="style4">
                        <tr style="font-size: x-small">
                            <td style="width: 94px">
                                Date</td>
                            <td style="width: 96px">
                                Time</td>
                            <td style="width: 99px">
                                Swipe Type</td>
                            <td style="width: 99px">
                                Approver</td>
                            <td style="width: 125px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                <asp:TextBox ID="txtdateinout" runat="server" align="absmiddle" 
                                    BackColor="#FFFFCC" Height="16px" Width="67px"></asp:TextBox>
                                <cc1:CalendarExtender ID="txtdateinout_CalendarExtender" runat="server" 
                                    Animated="False" Format="MM/dd/yyyy" PopupPosition="BottomRight" 
                                    TargetControlID="txtdateinout">
                                </cc1:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtdateinout" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 96px">
                                <asp:TextBox ID="txttimeinout" runat="server" BackColor="#FFFFCC" Height="16px"
                                    Width="67px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txttimeinout" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 50px">
                                <asp:DropDownList ID="DropDownList9" runat="server" BackColor="#FFFFCC">
                                    <asp:ListItem Value="0">In</asp:ListItem>
                                    <asp:ListItem Value="1">Out</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 99px">
                                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                                    BackColor="#FFFFCC" DataSourceID="SqlDataSourceapprover1" 
                                    DataTextField="NameSup" DataValueField="IDno" style="margin-left: 0px">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 125px">
                                &nbsp;</td>
                            <td>
                                &nbsp;<asp:Label ID="Label22" runat="server" Enabled="False" Visible="False"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txttimeinout" ErrorMessage="Invalid Time Format" 
                                    style="font-size: 10pt" 
                                    ValidationExpression="^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){0,2}$"></asp:RegularExpressionValidator>
                            </td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 94px">
                                Reasons</td>
                            <td style="width: 96px">
                                &nbsp;</td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td style="width: 99px">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <asp:TextBox ID="txtreasonfw0" runat="server" BackColor="#FFFFCC" Height="89px" 
                                    TextMode="MultiLine" Width="373px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtreasonfw0" ErrorMessage="*"></asp:RequiredFieldValidator>
                                &nbsp;<br />
                                <asp:Button ID="cmdnew1" runat="server" CausesValidation="False" Text="New" 
                                    Width="73px" />
                                &nbsp;<asp:Button ID="cmdsave1" runat="server" Text="Save" Width="73px" 
                                    Enabled="False" />
                                &nbsp;<asp:Button ID="cmdcancel1" runat="server" CausesValidation="False" 
                                    Text="Cancel" Width="73px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" 
                        Caption="IN/Out Requests for Approval" CellPadding="4" 
                        DataSourceID="SqlDS_FWReqINOutHistory" ForeColor="Black" 
                        GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IDNo" HeaderText="IDNo" 
                                SortExpression="IDNo" />
                            <asp:BoundField DataField="Deptcode" HeaderText="Deptcode" 
                                SortExpression="Deptcode" />
                            <asp:TemplateField HeaderText="TDate" SortExpression="TDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Swipe" HeaderText="Swipe" 
                                SortExpression="Swipe" />
                            <asp:BoundField DataField="TTime" HeaderText="TTime" 
                                SortExpression="TTime" />
                            <asp:BoundField DataField="Approver" HeaderText="Approver" 
                                SortExpression="Approver" />
                            <asp:BoundField DataField="Approval" HeaderText="Approval" 
                                SortExpression="Approval" />
                            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                                SortExpression="Reason" />
                            <asp:BoundField DataField="AddedBy" HeaderText="AddedBy" 
                                SortExpression="AddedBy" />
                            <asp:TemplateField HeaderText="DateAdded" SortExpression="DateAdded">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DateAdded") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("DateAdded", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ApprovedBy" HeaderText="ApprovedBy" 
                                SortExpression="ApprovedBy" />
                            <asp:TemplateField HeaderText="DateApproved" SortExpression="DateApproved">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DateApproved") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" 
                                        Text='<%# Bind("DateApproved", "{0:d}") %>'></asp:Label>
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
                    <asp:SqlDataSource ID="SqlDS_Timeinreq" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SELECT ID, IDNo, Deptcode, TDate, Swipe, TTime, TMin, Approver, Approval, Reason, AddedBy, DateAdded, ApprovedBy, DateApproved FROM HRDS_INOUT_Request WHERE (IDNo = @IDNo)" 
                        InsertCommand="spInsertHRDSInOut" InsertCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="IDNo" Type="String" />
                            <asp:Parameter Name="Deptcode" Type="String" />
                            <asp:Parameter Name="TDate" Type="DateTime" />
                            <asp:Parameter Name="Swipe" Type="String" />
                            <asp:Parameter Name="TTime" Type="String" />
                            <asp:Parameter Name="TMin" Type="Decimal" />
                            <asp:Parameter Name="Approver" Type="String" />
                            <asp:Parameter Name="Reason" Type="String" />
                            <asp:Parameter Name="AddedBy" Type="String" />
                            <asp:Parameter Name="DateAdded" Type="DateTime" />
                            <asp:Parameter Name="DateApproved" Type="DateTime" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_FWReqINOutHistory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        SelectCommand="SELECT ID, IDNo, Deptcode, TDate, Swipe, TTime, TMin, Approver, Approval, Reason, AddedBy, DateAdded, ApprovedBy, DateApproved FROM HRDS_INOUT_Request WHERE (IDNo = @IDNo) AND (Approval = '') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidno" Name="IDNO" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceapprover1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        SelectCommand="SELECT IDNo, LastName + '  ' + FirstName AS NameSup, EMailAdd FROM HRDS_Employee_Mast WHERE (Approve = @Approve)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Y" Name="Approve" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
<br />
</asp:Content>

