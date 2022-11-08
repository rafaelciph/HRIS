<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ABP.aspx.vb" Inherits="Maintenance_ABP" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </cc1:ToolkitScriptManager>
        
                <asp:Label ID="lblFY2" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidno" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblFY" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
        Text="Annual Maximum Benefit"></asp:Label>
    <hr />
        
    <table class="style4">
        <tr>
            <td colspan="5">
                Validity Period:&nbsp;
            From&nbsp;
                <asp:TextBox ID="txtfrom" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC" 
                    ReadOnly="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfrom" ErrorMessage="must be MM/DD/YYYY" 
                    ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$"></asp:RegularExpressionValidator>
                To&nbsp;
                <asp:TextBox ID="txtto" align="absmiddle"  
                runat="server" Width="67px" Height="15px" BackColor="#FFFFCC" 
                    ReadOnly="True"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtto" ErrorMessage="must be MM/DD/YYYY" 
                    ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$"></asp:RegularExpressionValidator>
&nbsp;<hr />
                </td>
        </tr>
        <tr>
            <td style="height: 25px; width: 129px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                Medical </td>
            <td style="height: 25px; width: 202px;">
                Dental</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 129px;">
                For Employee</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtEmpBen" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 202px;">
                <asp:TextBox ID="txtEmpDen" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 129px;">
                For Dependents</td>
            <td style="height: 25px; width: 207px;">
                <asp:TextBox ID="txtDepBen" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 202px;">
                <asp:TextBox ID="txtDepDen" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
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
                    CellPadding="4" DataSourceID="SqlDS_ABP" ForeColor="Black" 
                    GridLines="Vertical" style="margin-right: 0px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="EDFrom" SortExpression="EDFrom">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EDFrom") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("EDFrom", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EDTo" SortExpression="EDTo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EDTo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("EDTo", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MaxEmployee" SortExpression="MaxEmployee">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MaxEmployee") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" 
                                    Text='<%# Bind("MaxEmployee", "{0:N}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MaxDependent" SortExpression="MaxDependent">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MaxDependent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" 
                                    Text='<%# Bind("MaxDependent", "{0:N}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DenEmployee" SortExpression="DenEmployee">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DenEmployee") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" 
                                    Text='<%# Bind("DenEmployee", "{0:N}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DenDependent" SortExpression="DenDependent">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DenDependent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" 
                                    Text='<%# Bind("DenDependent", "{0:N}") %>'></asp:Label>
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
            <td style="height: 25px; width: 129px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                &nbsp;</td>
            <td style="height: 25px; width: 202px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right; width: 171px;">
                &nbsp;</td>
            <td style="height: 25px; text-align: right;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px; width: 129px;">
                &nbsp;</td>
            <td style="height: 25px; width: 207px;">
                &nbsp;</td>
            <td style="height: 25px; width: 202px;">
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
                    <asp:SqlDataSource ID="SqlDS_ABP" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                        
                        
                        SelectCommand="SelectHRDSABP" 
        SelectCommandType="StoredProcedure" InsertCommand="spInsertHRDSABP" 
        InsertCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="EDFrom" Type="DateTime" />
                            <asp:Parameter Name="EDTo" Type="DateTime" />
                            <asp:Parameter Name="MaxEmployee" Type="Decimal" />
                            <asp:Parameter Name="MaxDependent" Type="Decimal" />
                            <asp:Parameter Name="DenEmployee" Type="Decimal" />
                            <asp:Parameter Name="DenDependent" Type="Decimal" />
                            <asp:Parameter Name="DateEncoded" Type="DateTime" />
                            <asp:Parameter Name="EncodedBy" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
    <br />
</asp:Content>

