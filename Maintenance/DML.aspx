<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DML.aspx.vb" Inherits="Maintenance_DML" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:Label ID="lblFY2" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblidno" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblFY" runat="server" Visible="False"></asp:Label>
    <table class="style4">
        <tr>
            <td colspan="5">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
        Text="Dependents Master List"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Benefit Plan Coverage</td>
            <td style="height: 25px; " colspan="2">
                <asp:TextBox ID="txtbencoveredplan" runat="server" Width="305px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Employee ID</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtidno" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtidno" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Name of Employee</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtnameofemp" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnameofemp" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Name of Dependent</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtnameofdep" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnameofdep" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Date of Birth</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtbday" runat="server" ReadOnly="True"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtbday" 
          runat="server" Animated="False" Format="MM/dd/yyyy" 
          PopupPosition="BottomRight">
        </cc1:CalendarExtender>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtbday" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 25px; width: 159px;">
            </td>
            <td style="height: 25px; text-align: right; width: 171px;">
            </td>
            <td style="height: 25px; text-align: right;">
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Relationship</td>
            <td style="height: 25px; width: 207px;">
                <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False">
                    <asp:ListItem Value="0">--select--</asp:ListItem>
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Husband</asp:ListItem>
                    <asp:ListItem>Wife</asp:ListItem>
                    <asp:ListItem>Son</asp:ListItem>
                    <asp:ListItem>Daughter</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Beneficiary Type</td>
            <td style="height: 25px; " colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Primary" Checked="True" 
                    Enabled="False" />
&nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Check if Student" 
                    Enabled="False" />
            </td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                Address</td>
            <td colspan="2" rowspan="2">
                <asp:TextBox ID="txtaddress" runat="server" Height="52px" TextMode="MultiLine" align="abstop"
                    Width="305px" ReadOnly="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                &nbsp;</td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="5">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="5">
                <asp:Button ID="cmdnew" runat="server" Text="New" 
                    Width="73px" CausesValidation="False" />
                                &nbsp;<asp:Button ID="cmdsave" runat="server" Text="Save" 
                    Width="73px" Enabled="False" />
                                &nbsp;<asp:Button ID="cmdcancel" runat="server" Text="Cancel" 
                    Width="73px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="height: 25px; " colspan="5">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDS_DepLsit" ForeColor="Black" 
                    GridLines="Vertical" style="margin-right: 0px" AllowPaging="True" 
                    PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDNo" HeaderText="IDNo" SortExpression="IDNo" />
                        <asp:TemplateField HeaderText="Dependent" SortExpression="Dependent">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Dependent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Dependent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Birthday", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Relationship" SortExpression="Relationship">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Relationship") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Relationship") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DepType" SortExpression="DepType">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DepType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DepType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Student" SortExpression="Student">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Student") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Student") %>'></asp:Label>
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
            </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                &nbsp;</td>
            <td style="height: 25px; width: 159px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 166px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                &nbsp;</td>
            <td style="height: 25px; width: 159px;">
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td style="height: 25px; text-align: right; width: 171px;">
                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                    Text="Button" Enabled="False" Visible="False" />
            </td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDS_DepLsit" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SelectHRDSDepList" 
        SelectCommandType="StoredProcedure" InsertCommand="spInsertHRDSDepList" 
        InsertCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="IDNo" Type="String" />
            <asp:Parameter Name="Dependent" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Birthday" Type="DateTime" />
            <asp:Parameter Name="Relationship" Type="String" />
            <asp:Parameter Name="DepType" Type="String" />
            <asp:Parameter Name="Student" Type="String" />
            <asp:Parameter Name="DateEncoded" Type="DateTime" />
            <asp:Parameter Name="EncodedBy" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidno" Name="IDNo" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

