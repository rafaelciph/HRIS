<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Employee.aspx.vb" Inherits="HR_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:FormView ID="FormView1" runat="server" 
    DataSourceID="SqlDataSourceEmployee" DataKeyNames="IDNo">
                <EditItemTemplate>
                    <table class="style4">
                        <tr>
                            <td style="width: 146px">
                                IDNo:
                            </td>
                            <td style="width: 208px">
                                <asp:Label ID="IDNoLabel1" runat="server" Text='<%# Eval("IDNo") %>' />
                            </td>
                            <td style="width: 161px">
                                EMail Address:
                            </td>
                            <td style="width: 217px">
                                <asp:TextBox ID="EMailAddTextBox" runat="server" 
                                    Text='<%# Bind("EMailAdd") %>' />
                            </td>
                            <td>
                                CSU:</td>
                            <td>
                                <asp:TextBox ID="CSUTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("CSU") %>' Width="60px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Proximity Card No:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="BadgeNoTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("BadgeNo") %>' />
                            </td>
                            <td style="width: 161px">
                                Department:</td>
                            <td style="width: 217px">
                                <asp:TextBox ID="DepartmentTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Department") %>' />
                            </td>
                            <td>
                                Depcode:</td>
                            <td>
                                <asp:TextBox ID="DepcodeTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Depcode") %>' Width="60px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Last Name:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="LastNameTextBox" runat="server" 
                                    Text='<%# Bind("LastName") %>' />
                            </td>
                            <td style="width: 161px">
                                Gender:</td>
                            <td colspan="3">
                                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                First Name:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                    Text='<%# Bind("FirstName") %>' />
                            </td>
                            <td style="width: 161px">
                                Birth Date:</td>
                            <td colspan="3">
                                <asp:TextBox ID="BirthDateTextBox" runat="server" 
                                    Text='<%# Bind("BirthDate", "{0:d}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Middle Name:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                                    Text='<%# Bind("MiddleName") %>' />
                            </td>
                            <td style="width: 161px">
                                Age:
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Tel No.</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="HomeNoTextBox" runat="server" Text='<%# Bind("HomeNo") %>' />
                            </td>
                            <td style="width: 161px">
                                Nick Name:</td>
                            <td colspan="3">
                                <asp:TextBox ID="NickNameTextBox" runat="server" 
                                    Text='<%# Bind("NickName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                &nbsp;</td>
                            <td style="width: 208px">
                                &nbsp;</td>
                            <td style="width: 161px">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Address1:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="Address1TextBox" runat="server" 
                                    Text='<%# Bind("Address1") %>' />
                            </td>
                            <td style="width: 161px">
                                Address2:
                            </td>
                            <td colspan="3">
                                <asp:TextBox ID="Address2TextBox" runat="server" 
                                    Text='<%# Bind("Address2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                &nbsp;</td>
                            <td style="width: 208px">
                                &nbsp;</td>
                            <td style="width: 161px">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Civil Status:
                            </td>
                            <td style="width: 208px">
                                <asp:TextBox ID="CivilStatusTextBox" runat="server" 
                                    Text='<%# Bind("CivilStatus") %>' />
                            </td>
                            <td style="width: 161px">
                                SSS No:</td>
                            <td colspan="3">
                                <asp:TextBox ID="SSSNoTextBox" runat="server" Text='<%# Bind("SSSNo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Spouse Name:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="SpouseNameTextBox" runat="server" 
                                    Text='<%# Bind("SpouseName") %>' />
                            </td>
                            <td style="width: 161px">
                                TIN No:</td>
                            <td colspan="3">
                                <asp:TextBox ID="TINNoTextBox" runat="server" Text='<%# Bind("TINNo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Marriage Date:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="MarriageDateTextBox" runat="server" 
                                    Text='<%# Bind("MarriageDate") %>' />
                            </td>
                            <td style="width: 161px">
                                PagIbigNo:</td>
                            <td colspan="3">
                                <asp:TextBox ID="PagIbigNoTextBox" runat="server" 
                                    Text='<%# Bind("PagIbigNo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Spouse Employer:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="SpouseEmployerTextBox" runat="server" 
                                    Text='<%# Bind("SpouseEmployer") %>' />
                            </td>
                            <td style="width: 161px">
                                Phil Health No.:</td>
                            <td colspan="3">
                                <asp:TextBox ID="HealthCardNameTextBox" runat="server" 
                                    Text='<%# Bind("HealthCardName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Father: </td>
                            <td style="width: 208px">
                                <asp:TextBox ID="FatherTextBox" runat="server" Text='<%# Bind("Father") %>' />
                            </td>
                            <td style="width: 161px">
                                Health Card No:</td>
                            <td colspan="3">
                                <asp:TextBox ID="HealthCardNoTextBox" runat="server" 
                                    Text='<%# Bind("HealthCardNo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Mother: </td>
                            <td style="width: 208px">
                                <asp:TextBox ID="MotherTextBox" runat="server" Text='<%# Bind("Mother") %>' />
                            </td>
                            <td style="width: 161px">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 25px; width: 146px">
                                &nbsp;</td>
                            <td style="width: 208px; height: 25px">
                                &nbsp;</td>
                            <td style="height: 25px; width: 161px">
                                &nbsp;</td>
                            <td style="height: 25px" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Contact No:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="ContactNoTextBox" runat="server" style="margin-bottom: 0px" 
                                    Text='<%# Bind("ContactNo") %>' />
                            </td>
                            <td style="width: 161px">
                                Contact Person:</td>
                            <td colspan="3">
                                <asp:TextBox ID="ContactPersonTextBox" runat="server" 
                                    Text='<%# Bind("ContactPerson") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Contact Address:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="ContactAddTextBox" runat="server" 
                                    Text='<%# Bind("ContactAdd") %>' />
                            </td>
                            <td style="width: 161px">
                                Relation:</td>
                            <td colspan="3">
                                <asp:TextBox ID="RelationTextBox" runat="server" 
                                    Text='<%# Bind("Relation") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                &nbsp;</td>
                            <td style="width: 208px">
                                &nbsp;</td>
                            <td style="width: 161px">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                DateHired:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="DateHiredTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("DateHired", "{0:d}") %>' />
                            </td>
                            <td style="width: 161px">
                                Date Regularized: </td>
                            <td colspan="3">
                                <asp:TextBox ID="DateRegularTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("DateRegular", "{0:d}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Status:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="StatusTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Status") %>' />
                            </td>
                            <td style="width: 161px">
                                Date Resigned:</td>
                            <td colspan="3">
                                <asp:TextBox ID="DateResignedTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("DateResigned", "{0:d}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                Position:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="PositionTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Position") %>' Width="210px" />
                            </td>
                            <td style="width: 161px">
                                Assistant:</td>
                            <td colspan="3">
                                <asp:TextBox ID="AssistantTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Assistant") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 146px">
                                PositionType:</td>
                            <td style="width: 208px">
                                <asp:TextBox ID="PositionTypeTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("PositionType") %>' />
                            </td>
                            <td style="width: 161px">
                                &nbsp;</td>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <asp:Button ID="Button2" runat="server" CommandName="Update" Text="Update" />
                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel" />
                    <br />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CSU:
                    <asp:TextBox ID="CSUTextBox" runat="server" Text='<%# Bind("CSU") %>' />
                    <br />
                    IDNo:
                    <asp:TextBox ID="IDNoTextBox" runat="server" Text='<%# Bind("IDNo") %>' />
                    <br />
                    Tag:
                    <asp:TextBox ID="TagTextBox" runat="server" Text='<%# Bind("Tag") %>' />
                    <br />
                    BadgeNo:
                    <asp:TextBox ID="BadgeNoTextBox" runat="server" Text='<%# Bind("BadgeNo") %>' />
                    <br />
                    LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" 
                        Text='<%# Bind("LastName") %>' />
                    <br />
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" 
                        Text='<%# Bind("FirstName") %>' />
                    <br />
                    MiddleName:
                    <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                        Text='<%# Bind("MiddleName") %>' />
                    <br />
                    NickName:
                    <asp:TextBox ID="NickNameTextBox" runat="server" 
                        Text='<%# Bind("NickName") %>' />
                    <br />
                    Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    BirthDate:
                    <asp:TextBox ID="BirthDateTextBox" runat="server" 
                        Text='<%# Bind("BirthDate") %>' />
                    <br />
                    Age:
                    <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    <br />
                    Address1:
                    <asp:TextBox ID="Address1TextBox" runat="server" 
                        Text='<%# Bind("Address1") %>' />
                    <br />
                    Address2:
                    <asp:TextBox ID="Address2TextBox" runat="server" 
                        Text='<%# Bind("Address2") %>' />
                    <br />
                    HomeNo:
                    <asp:TextBox ID="HomeNoTextBox" runat="server" Text='<%# Bind("HomeNo") %>' />
                    <br />
                    EMailAdd:
                    <asp:TextBox ID="EMailAddTextBox" runat="server" 
                        Text='<%# Bind("EMailAdd") %>' />
                    <br />
                    CivilStatus:
                    <asp:TextBox ID="CivilStatusTextBox" runat="server" 
                        Text='<%# Bind("CivilStatus") %>' />
                    <br />
                    SpouseName:
                    <asp:TextBox ID="SpouseNameTextBox" runat="server" 
                        Text='<%# Bind("SpouseName") %>' />
                    <br />
                    SpouseEmployer:
                    <asp:TextBox ID="SpouseEmployerTextBox" runat="server" 
                        Text='<%# Bind("SpouseEmployer") %>' />
                    <br />
                    MarriageDate:
                    <asp:TextBox ID="MarriageDateTextBox" runat="server" 
                        Text='<%# Bind("MarriageDate") %>' />
                    <br />
                    Father:
                    <asp:TextBox ID="FatherTextBox" runat="server" Text='<%# Bind("Father") %>' />
                    <br />
                    Mother:
                    <asp:TextBox ID="MotherTextBox" runat="server" Text='<%# Bind("Mother") %>' />
                    <br />
                    ContactPerson:
                    <asp:TextBox ID="ContactPersonTextBox" runat="server" 
                        Text='<%# Bind("ContactPerson") %>' />
                    <br />
                    ContactAdd:
                    <asp:TextBox ID="ContactAddTextBox" runat="server" 
                        Text='<%# Bind("ContactAdd") %>' />
                    <br />
                    ContactNo:
                    <asp:TextBox ID="ContactNoTextBox" runat="server" 
                        Text='<%# Bind("ContactNo") %>' />
                    <br />
                    Relation:
                    <asp:TextBox ID="RelationTextBox" runat="server" 
                        Text='<%# Bind("Relation") %>' />
                    <br />
                    SSSNo:
                    <asp:TextBox ID="SSSNoTextBox" runat="server" Text='<%# Bind("SSSNo") %>' />
                    <br />
                    TINNo:
                    <asp:TextBox ID="TINNoTextBox" runat="server" Text='<%# Bind("TINNo") %>' />
                    <br />
                    PagIbigNo:
                    <asp:TextBox ID="PagIbigNoTextBox" runat="server" 
                        Text='<%# Bind("PagIbigNo") %>' />
                    <br />
                    HealthCardName:
                    <asp:TextBox ID="HealthCardNameTextBox" runat="server" 
                        Text='<%# Bind("HealthCardName") %>' />
                    <br />
                    HealthCardNo:
                    <asp:TextBox ID="HealthCardNoTextBox" runat="server" 
                        Text='<%# Bind("HealthCardNo") %>' />
                    <br />
                    Department:
                    <asp:TextBox ID="DepartmentTextBox" runat="server" 
                        Text='<%# Bind("Department") %>' />
                    <br />
                    Depcode:
                    <asp:TextBox ID="DepcodeTextBox" runat="server" Text='<%# Bind("Depcode") %>' />
                    <br />
                    DepMed:
                    <asp:TextBox ID="DepMedTextBox" runat="server" Text='<%# Bind("DepMed") %>' />
                    <br />
                    Assistant:
                    <asp:TextBox ID="AssistantTextBox" runat="server" 
                        Text='<%# Bind("Assistant") %>' />
                    <br />
                    Position:
                    <asp:TextBox ID="PositionTextBox" runat="server" 
                        Text='<%# Bind("Position") %>' />
                    <br />
                    PositionType:
                    <asp:TextBox ID="PositionTypeTextBox" runat="server" 
                        Text='<%# Bind("PositionType") %>' />
                    <br />
                    PaymentType:
                    <asp:TextBox ID="PaymentTypeTextBox" runat="server" 
                        Text='<%# Bind("PaymentType") %>' />
                    <br />
                    DateHired:
                    <asp:TextBox ID="DateHiredTextBox" runat="server" 
                        Text='<%# Bind("DateHired") %>' />
                    <br />
                    DateRegular:
                    <asp:TextBox ID="DateRegularTextBox" runat="server" 
                        Text='<%# Bind("DateRegular") %>' />
                    <br />
                    Status:
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                    <br />
                    DateResigned:
                    <asp:TextBox ID="DateResignedTextBox" runat="server" 
                        Text='<%# Bind("DateResigned") %>' />
                    <br />
                    ShiftCode:
                    <asp:TextBox ID="ShiftCodeTextBox" runat="server" 
                        Text='<%# Bind("ShiftCode") %>' />
                    <br />
                    Approve:
                    <asp:TextBox ID="ApproveTextBox" runat="server" Text='<%# Bind("Approve") %>' />
                    <br />
                    EncodedBy:
                    <asp:TextBox ID="EncodedByTextBox" runat="server" 
                        Text='<%# Bind("EncodedBy") %>' />
                    <br />
                    PP:
                    <asp:TextBox ID="PPTextBox" runat="server" Text='<%# Bind("PP") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="style4">
                        <tr>
                            <td style="width: 201px">
                                IDNo:
                                <asp:Label ID="IDNoLabel" runat="server" Text='<%# Eval("IDNo") %>' />
                            </td>
                            <td>
                                Depcode:&nbsp;
                                <asp:Label ID="DepcodeLabel" runat="server" Text='<%# Bind("Depcode") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 201px">
                                Name:&nbsp;<asp:Label ID="FirstNameLabel" runat="server" 
                                    Text='<%# Bind("FirstName") %>' />
                                &nbsp;<asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table class="style4">
                        <tr>
                            <td class="style2">
                                Address1:</td>
                            <td style="width: 371px">
                                <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
                            </td>
                            <td style="width: 153px">
                                Birth Date:
                            </td>
                            <td class="style2">
                                <asp:Label ID="BirthDateLabel" runat="server" 
                                    Text='<%# Bind("BirthDate", "{0:d}") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Address2:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
                            </td>
                            <td style="width: 153px">
                                Age:
                            </td>
                            <td class="style2">
                                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                ContactNo:</td>
                            <td style="width: 371px">
                                <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Bind("ContactNo") %>' />
                            </td>
                            <td style="width: 153px">
                                NickName:</td>
                            <td class="style2">
                                <asp:Label ID="NickNameLabel" runat="server" Text='<%# Bind("NickName") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                EMailAdd:</td>
                            <td style="width: 371px">
                                <asp:Label ID="EMailAddLabel" runat="server" Text='<%# Bind("EMailAdd") %>' />
                            </td>
                            <td style="width: 153px">
                                Sex:
                            </td>
                            <td class="style2">
                                <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td style="width: 371px">
                                &nbsp;</td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Father:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="FatherLabel" runat="server" Text='<%# Bind("Father") %>' />
                            </td>
                            <td style="width: 153px">
                                SSSNo:</td>
                            <td class="style2">
                                <asp:Label ID="SSSNoLabel" runat="server" Text='<%# Bind("SSSNo") %>' />
                            </td>
                            <td style="width: 159px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Mother:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="MotherLabel" runat="server" Text='<%# Bind("Mother") %>' />
                            </td>
                            <td style="width: 153px">
                                TINNo:
                            </td>
                            <td class="style2">
                                <asp:Label ID="TINNoLabel" runat="server" Text='<%# Bind("TINNo") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                CivilStatus:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="CivilStatusLabel" runat="server" 
                                    Text='<%# Bind("CivilStatus") %>' />
                            </td>
                            <td style="width: 153px">
                                PagIbigNo:
                            </td>
                            <td class="style2">
                                <asp:Label ID="PagIbigNoLabel" runat="server" Text='<%# Bind("PagIbigNo") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                SpouseName:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="SpouseNameLabel" runat="server" 
                                    Text='<%# Bind("SpouseName") %>' />
                            </td>
                            <td style="width: 153px">
                                Phil. Health No.</td>
                            <td class="style2">
                                <asp:Label ID="HealthCardNameLabel" runat="server" 
                                    Text='<%# Bind("HealthCardName") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Marriage Date:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="MarriageDateLabel" runat="server" 
                                    Text='<%# Bind("MarriageDate", "{0:d}") %>' />
                            </td>
                            <td style="width: 153px">
                                HealthCardNo:
                            </td>
                            <td class="style2">
                                <asp:Label ID="HealthCardNoLabel" runat="server" 
                                    Text='<%# Bind("HealthCardNo") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                SpouseEmployer:</td>
                            <td style="width: 371px">
                                <asp:Label ID="SpouseEmployerLabel" runat="server" 
                                    Text='<%# Bind("SpouseEmployer") %>' />
                            </td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td style="width: 371px">
                                &nbsp;</td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td rowspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <strong>Emergency:</strong></td>
                            <td style="width: 371px">
                                &nbsp;</td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                ContactPerson:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="ContactPersonLabel" runat="server" 
                                    Text='<%# Bind("ContactPerson") %>' />
                            </td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                ContactAdd:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="ContactAddLabel" runat="server" 
                                    Text='<%# Bind("ContactAdd") %>' />
                            </td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Relation:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="RelationLabel" runat="server" Text='<%# Bind("Relation") %>' />
                            </td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Contact No.:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="HomeNoLabel" runat="server" Text='<%# Bind("HomeNo") %>' />
                            </td>
                            <td style="width: 153px">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <table class="style4">
                        <tr>
                            <td class="style2">
                                Department:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="DepartmentLabel" runat="server" 
                                    Text='<%# Bind("Department") %>' />
                            </td>
                            <td style="width: 153px">
                                Position:
                            </td>
                            <td style="width: 252px">
                                <asp:Label ID="PositionLabel" runat="server" Text='<%# Bind("Position") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Assistant:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="AssistantLabel" runat="server" Text='<%# Bind("Assistant") %>' />
                            </td>
                            <td style="width: 153px">
                                PositionType:
                            </td>
                            <td style="width: 252px">
                                <asp:Label ID="PositionTypeLabel" runat="server" 
                                    Text='<%# Bind("PositionType") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Status:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                            </td>
                            <td style="width: 153px">
                                Date Hired:
                            </td>
                            <td style="width: 252px">
                                <asp:Label ID="DateHiredLabel" runat="server" 
                                    Text='<%# Bind("DateHired", "{0:d}") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                ShiftCode:
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="ShiftCodeLabel" runat="server" Text='<%# Bind("ShiftCode") %>' />
                            </td>
                            <td style="width: 153px">
                                Date Regular:
                            </td>
                            <td style="width: 252px">
                                <asp:Label ID="DateRegularLabel" runat="server" 
                                    Text='<%# Bind("DateRegular", "{0:d}") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Approver :
                            </td>
                            <td style="width: 371px">
                                <asp:Label ID="ApproveLabel" runat="server" Text='<%# Bind("Approve") %>' />
                            </td>
                            <td style="width: 153px">
                                Date Resigned:
                            </td>
                            <td style="width: 252px">
                                <asp:Label ID="DateResignedLabel" runat="server" 
                                    Text='<%# Bind("DateResigned", "{0:d}") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    <br />
                </ItemTemplate>
</asp:FormView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
<asp:SqlDataSource ID="SqlDataSourceEmployee" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HRDSConnectionString %>" 
                DeleteCommand="DELETE FROM [HRDS_Employee_Mast] WHERE [IDNo] = @original_IDNo" 
                InsertCommand="INSERT INTO [HRDS_Employee_Mast] ([CSU], [IDNo], [Tag], [BadgeNo], [LastName], [FirstName], [MiddleName], [NickName], [Sex], [BirthDate], [Age], [Address1], [Address2], [HomeNo], [EMailAdd], [CivilStatus], [SpouseName], [SpouseEmployer], [MarriageDate], [Father], [Mother], [ContactPerson], [ContactAdd], [ContactNo], [Relation], [SSSNo], [TINNo], [PagIbigNo], [HealthCardName], [HealthCardNo], [Department], [Depcode], [DepMed], [Assistant], [Position], [PositionType], [PaymentType], [DateHired], [DateRegular], [Status], [DateResigned], [ShiftCode], [Approve], [EncodedBy], [PP]) VALUES (@CSU, @IDNo, @Tag, @BadgeNo, @LastName, @FirstName, @MiddleName, @NickName, @Sex, @BirthDate, @Age, @Address1, @Address2, @HomeNo, @EMailAdd, @CivilStatus, @SpouseName, @SpouseEmployer, @MarriageDate, @Father, @Mother, @ContactPerson, @ContactAdd, @ContactNo, @Relation, @SSSNo, @TINNo, @PagIbigNo, @HealthCardName, @HealthCardNo, @Department, @Depcode, @DepMed, @Assistant, @Position, @PositionType, @PaymentType, @DateHired, @DateRegular, @Status, @DateResigned, @ShiftCode, @Approve, @EncodedBy, @PP)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [HRDS_Employee_Mast] WHERE ([IDNo] = @IDNo)" 
                
                UpdateCommand="UPDATE [HRDS_Employee_Mast] SET [CSU] = @CSU, [Tag] = @Tag, [BadgeNo] = @BadgeNo, [LastName] = @LastName, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [NickName] = @NickName, [Sex] = @Sex, [BirthDate] = @BirthDate, [Age] = @Age, [Address1] = @Address1, [Address2] = @Address2, [HomeNo] = @HomeNo, [EMailAdd] = @EMailAdd, [CivilStatus] = @CivilStatus, [SpouseName] = @SpouseName, [SpouseEmployer] = @SpouseEmployer, [MarriageDate] = @MarriageDate, [Father] = @Father, [Mother] = @Mother, [ContactPerson] = @ContactPerson, [ContactAdd] = @ContactAdd, [ContactNo] = @ContactNo, [Relation] = @Relation, [SSSNo] = @SSSNo, [TINNo] = @TINNo, [PagIbigNo] = @PagIbigNo, [HealthCardName] = @HealthCardName, [HealthCardNo] = @HealthCardNo, [Department] = @Department, [Depcode] = @Depcode, [DepMed] = @DepMed, [Assistant] = @Assistant, [Position] = @Position, [PositionType] = @PositionType, [PaymentType] = @PaymentType, [DateHired] = @DateHired, [DateRegular] = @DateRegular, [Status] = @Status, [DateResigned] = @DateResigned, [ShiftCode] = @ShiftCode, [Approve] = @Approve, [EncodedBy] = @EncodedBy, [PP] = @PP WHERE [IDNo] = @original_IDNo">
    <DeleteParameters>
        <asp:Parameter Name="original_IDNo" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CSU" Type="String" />
        <asp:Parameter Name="IDNo" Type="String" />
        <asp:Parameter Name="Tag" Type="String" />
        <asp:Parameter Name="BadgeNo" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="NickName" Type="String" />
        <asp:Parameter Name="Sex" Type="String" />
        <asp:Parameter Name="BirthDate" Type="DateTime" />
        <asp:Parameter Name="Age" Type="Decimal" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Address2" Type="String" />
        <asp:Parameter Name="HomeNo" Type="String" />
        <asp:Parameter Name="EMailAdd" Type="String" />
        <asp:Parameter Name="CivilStatus" Type="String" />
        <asp:Parameter Name="SpouseName" Type="String" />
        <asp:Parameter Name="SpouseEmployer" Type="String" />
        <asp:Parameter Name="MarriageDate" Type="DateTime" />
        <asp:Parameter Name="Father" Type="String" />
        <asp:Parameter Name="Mother" Type="String" />
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ContactAdd" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="Relation" Type="String" />
        <asp:Parameter Name="SSSNo" Type="String" />
        <asp:Parameter Name="TINNo" Type="String" />
        <asp:Parameter Name="PagIbigNo" Type="String" />
        <asp:Parameter Name="HealthCardName" Type="String" />
        <asp:Parameter Name="HealthCardNo" Type="String" />
        <asp:Parameter Name="Department" Type="String" />
        <asp:Parameter Name="Depcode" Type="String" />
        <asp:Parameter Name="DepMed" Type="String" />
        <asp:Parameter Name="Assistant" Type="String" />
        <asp:Parameter Name="Position" Type="String" />
        <asp:Parameter Name="PositionType" Type="String" />
        <asp:Parameter Name="PaymentType" Type="String" />
        <asp:Parameter Name="DateHired" Type="DateTime" />
        <asp:Parameter Name="DateRegular" Type="DateTime" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="DateResigned" Type="DateTime" />
        <asp:Parameter Name="ShiftCode" Type="String" />
        <asp:Parameter Name="Approve" Type="String" />
        <asp:Parameter Name="EncodedBy" Type="String" />
        <asp:Parameter Name="PP" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="Label2" Name="IDNo" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="ID" Type="Int32" />
        <asp:Parameter Name="CSU" Type="String" />
        <asp:Parameter Name="Tag" Type="String" />
        <asp:Parameter Name="BadgeNo" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="MiddleName" Type="String" />
        <asp:Parameter Name="NickName" Type="String" />
        <asp:Parameter Name="Sex" Type="String" />
        <asp:Parameter Name="BirthDate" Type="DateTime" />
        <asp:Parameter Name="Age" Type="Decimal" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Address2" Type="String" />
        <asp:Parameter Name="HomeNo" Type="String" />
        <asp:Parameter Name="EMailAdd" Type="String" />
        <asp:Parameter Name="CivilStatus" Type="String" />
        <asp:Parameter Name="SpouseName" Type="String" />
        <asp:Parameter Name="SpouseEmployer" Type="String" />
        <asp:Parameter Name="MarriageDate" Type="DateTime" />
        <asp:Parameter Name="Father" Type="String" />
        <asp:Parameter Name="Mother" Type="String" />
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ContactAdd" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="Relation" Type="String" />
        <asp:Parameter Name="SSSNo" Type="String" />
        <asp:Parameter Name="TINNo" Type="String" />
        <asp:Parameter Name="PagIbigNo" Type="String" />
        <asp:Parameter Name="HealthCardName" Type="String" />
        <asp:Parameter Name="HealthCardNo" Type="String" />
        <asp:Parameter Name="Department" Type="String" />
        <asp:Parameter Name="Depcode" Type="String" />
        <asp:Parameter Name="DepMed" Type="String" />
        <asp:Parameter Name="Assistant" Type="String" />
        <asp:Parameter Name="Position" Type="String" />
        <asp:Parameter Name="PositionType" Type="String" />
        <asp:Parameter Name="PaymentType" Type="String" />
        <asp:Parameter Name="DateHired" Type="DateTime" />
        <asp:Parameter Name="DateRegular" Type="DateTime" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="DateResigned" Type="DateTime" />
        <asp:Parameter Name="ShiftCode" Type="String" />
        <asp:Parameter Name="Approve" Type="String" />
        <asp:Parameter Name="EncodedBy" Type="String" />
        <asp:Parameter Name="PP" Type="String" />
        <asp:Parameter Name="original_IDNo" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

