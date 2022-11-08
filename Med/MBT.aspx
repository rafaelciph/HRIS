<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MBT.aspx.vb" Inherits="Med_MBT" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:Label ID="lblFY2" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblidno" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblFY" runat="server" Visible="False"></asp:Label>
    <table class="style4">
        <tr>
            <td colspan="7">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
        Text="Benefit Calculation"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Date Applied:</td>
            <td style="height: 25px; width: 186px;">
                <asp:TextBox ID="mebDate" runat="server" Width="70px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 203px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: left; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: right; width: 262px;">
                eciet</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 186px;">
                <asp:CheckBox ID="optemp" runat="server" Text="For Employee" 
                    Enabled="False" BorderStyle="None" />
            </td>
            <td style="height: 25px; width: 203px;">
                <asp:CheckBox ID="optdep" runat="server" Text="For Dependent" 
                    Enabled="False" BorderStyle="None" />
            </td>
            <td style="height: 25px; text-align: right; width: 218px;">
                <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: right; width: 262px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Patient&#39;s Name:</td>
            <td style="height: 25px; width: 186px;">
                <asp:DropDownList ID="cboDep" runat="server" DataSourceID="SqlDeplist" 
                    DataTextField="Dependent" DataValueField="ID"  AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="height: 25px; width: 203px;">
                &nbsp;Relationship:
                <asp:Label ID="lblrelation" runat="server"></asp:Label>
            </td>
            <td style="height: 25px; text-align: left; width: 218px;">
                Birthdate:&nbsp;
                <asp:Label ID="lblDepBday" runat="server" style="text-align: left"></asp:Label>
            </td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: right; width: 262px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Type Of Care:</td>
            <td style="height: 25px; " colspan="3">
                <asp:CheckBox ID="optmedical" runat="server" Text="Medical" 
                    Enabled="False" BorderStyle="None" />
            &nbsp;&nbsp;
                <asp:CheckBox ID="optmedicine" runat="server" Text="Medicine" 
                    Enabled="False" BorderStyle="None" />
            &nbsp;
                <asp:CheckBox ID="opteyeexam" runat="server" Text="Eye Exam " 
                    Enabled="False" BorderStyle="None" />
                &nbsp;&nbsp;
                <asp:CheckBox ID="optglasses" runat="server" Text="Glasses" 
                    Enabled="False" BorderStyle="None" />
            &nbsp;
                <asp:CheckBox ID="optcounseling" runat="server" Text="Counseling" 
                    Enabled="False" BorderStyle="None" />
                &nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="optape" runat="server" Text="A.P.E." 
                    Enabled="False" BorderStyle="None" />
            </td>
            
            <td style="height: 25px; text-align: right">
                |</td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Date Of Care:</td>
            <td style="height: 25px; width: 186px;">
                <asp:TextBox ID="mebDCare" runat="server" ReadOnly="True" Width="70px"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="mebDCare" 
          runat="server" Animated="False" Format="MM/dd/yyyy" 
          PopupPosition="BottomRight">
        </cc1:CalendarExtender>
            </td>
            <td style="height: 25px; width: 203px;">
            </td>
            <td style="height: 25px; text-align: right; width: 218px;">
            </td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: left; width: 262px;">
                Total&nbsp; Cost:&nbsp;
            </td>
            <td style="height: 25px; text-align: left;">
                <asp:TextBox ID="txtTotal" runat="server" Enabled="False" ReadOnly="True" 
                    Width="112px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Care Provided :</td>
            <td style="height: 25px; width: 186px;">
                <asp:TextBox ID="txtCareProv" runat="server"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 203px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: left; width: 262px;">
                Percentage Covered by this Plan : </td>
            <td style="height: 25px; text-align: left;">
                <asp:TextBox ID="txtPercent" runat="server" Enabled="False" ReadOnly="True" 
                    Width="112px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Diagnosis/Reason :</td>
            <td colspan="2" rowspan="2">
                <asp:TextBox ID="txtDiagnosis" runat="server" Height="52px" 
                    TextMode="MultiLine" align="abstop"
                    Width="305px" ReadOnly="True"></asp:TextBox>
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: left; width: 262px;">
                Coverage Reimbursement Amount :&nbsp; </td>
            <td style="height: 25px; text-align: left;">
                <asp:TextBox ID="txtReimT" runat="server" Enabled="False" ReadOnly="True" 
                    Width="112px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: left; width: 262px;">
                Amount Reimbursed : </td>
            <td style="height: 25px; text-align: left;">
                <asp:TextBox ID="txtReimA" runat="server" Enabled="False" ReadOnly="True" 
                    Width="112px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Total Cost :</td>
            <td style="height: 25px; width: 186px;">
                <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 203px;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; ">
                |</td>
            <td style="height: 25px; text-align: left; width: 262px;">
                Remaining Reimbursement Available :&nbsp; </td>
            <td style="height: 25px; text-align: left;">
                <asp:TextBox ID="txtBal" runat="server" Enabled="False" ReadOnly="True" 
                    Width="112px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="7">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="7">
                <asp:Button ID="cmdnew" runat="server" Text="New" 
                    Width="73px" CausesValidation="False" />
                                &nbsp;<asp:Button ID="cmdsave" runat="server" Text="Save" 
                    Width="73px" Enabled="False" />
                                &nbsp;<asp:Button ID="cmdedit" runat="server" Text="Edit" 
                    Width="73px" CausesValidation="False" />
            &nbsp;<asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    Width="73px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="7">
                <br />
                <asp:Label ID="Label30" runat="server" style="font-weight: 700" 
                    Text="Benefits for Posting "></asp:Label>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Height="200px" 
                    ScrollBars="Auto" Width="1335px">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDS_MedTrans" ForeColor="Black" 
                        GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="IDNo" SortExpression="IDNo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IDNo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tran_Type" SortExpression="Tran_Type">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Tran_Type") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Tran_Type") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Care_Date" SortExpression="Care_Date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Care_Date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Care_Date", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EDFrom" SortExpression="EDFrom">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EDFrom") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("EDFrom", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EDTo" SortExpression="EDTo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EDTo") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("EDTo", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Patient" SortExpression="Patient">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Patient") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Patient") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmpName" SortExpression="EmpName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("EmpName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DepName" SortExpression="DepName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DepName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DepName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DepBday" SortExpression="DepBday">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("DepBday") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("DepBday", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DepRel" SortExpression="DepRel">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("DepRel") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("DepRel") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Medical" SortExpression="Medical">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Medical") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Medical") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Medicine" SortExpression="Medicine">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Medicine") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Medicine") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eye" SortExpression="Eye">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Eye") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Eye") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Glasses" SortExpression="Glasses">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Glasses") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Glasses") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Counsel" SortExpression="Counsel">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Counsel") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Counsel") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APE" SortExpression="APE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("APE") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("APE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Provider" SortExpression="Provider">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("Provider") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("Provider") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Diagnosis" SortExpression="Diagnosis">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("Diagnosis") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("Diagnosis") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Care_Cost" SortExpression="Care_Cost">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("Care_Cost") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("Care_Cost", "{0:N}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Plan_Percent" SortExpression="Plan_Percent">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("Plan_Percent") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("Plan_Percent") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Plan_Reimb" SortExpression="Plan_Reimb">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("Plan_Reimb") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label21" runat="server" 
                                        Text='<%# Bind("Plan_Reimb", "{0:N}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Reimbursed" SortExpression="Reimbursed">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("Reimbursed") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label22" runat="server" 
                                        Text='<%# Bind("Reimbursed", "{0:N}") %>'></asp:Label>
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
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 186px;">
                &nbsp;</td>
            <td style="height: 25px; width: 203px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 186px;">
                &nbsp;</td>
            <td style="height: 25px; width: 203px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 218px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDS_MedTrans" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SelectHRDSMedTrans" 
        SelectCommandType="StoredProcedure" InsertCommand="spInsertHRDSMedTrans" 
        InsertCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="IDNo" Type="String" />
            <asp:Parameter Name="Tran_Type" Type="String" />
            <asp:Parameter Name="Care_Date" Type="DateTime" />
            <asp:Parameter Name="EDFrom" Type="DateTime" />
            <asp:Parameter Name="EDTo" Type="DateTime" />
            <asp:Parameter Name="Patient" Type="String" />
            <asp:Parameter Name="EmpName" Type="String" />
            <asp:Parameter Name="DepName" Type="String" />
            <asp:Parameter Name="DepBday" Type="DateTime" />
            <asp:Parameter Name="DepRel" Type="String" />
            <asp:Parameter Name="Medical" Type="String" />
            <asp:Parameter Name="Medicine" Type="String" />
            <asp:Parameter Name="Eye" Type="String" />
            <asp:Parameter Name="Glasses" Type="String" />
            <asp:Parameter Name="Counsel" Type="String" />
            <asp:Parameter Name="APE" Type="String" />
            <asp:Parameter Name="Provider" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
            <asp:Parameter Name="Care_Cost" Type="Decimal" />
            <asp:Parameter Name="Plan_Percent" Type="String" />
            <asp:Parameter Name="Plan_Reimb" Type="Decimal" />
            <asp:Parameter Name="Reimbursed" Type="Decimal" />
            <asp:Parameter Name="EncodedBy" Type="String" />
            <asp:Parameter Name="DateEncoded" Type="DateTime" />
            <asp:Parameter Name="Posted" Type="String" />
            <asp:Parameter Name="PostedBy" Type="String" />
            <asp:Parameter Name="DatePosted" Type="DateTime" />
            <asp:Parameter Name="APE_monitor" Type="String" />
            <asp:Parameter Name="APE_DepName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="lblFY2" Name="EDFrom" PropertyName="Text" 
                Type="DateTime" />
            <asp:ControlParameter ControlID="lblFY" Name="EDTo" PropertyName="Text" 
                Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDeplist" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
        
        SelectCommand="SELECT [ID], [IDNo], [Dependent], [Birthday], [Relationship], [DepType], [Student] FROM [HRDS_Dependents_Mast] WHERE ([IDNo] = @IDNo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    d
</asp:Content>

