Imports System
Imports System.Web
' We need System.IO namespace to read and write to disc
Imports System.IO

Partial Class Maintenance_DML
    Inherits System.Web.UI.Page
    Dim DepType_ As String
    Dim StudType As String

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        If Not Roles.IsUserInRole("Staff") Or Not Roles.IsUserInRole("Admin") Then
            Response.Redirect("~/Account/Login.aspx")
        End If
        If Not Page.IsPostBack Then
            lblidno.Text = Server.HtmlDecode(Profile.Idno)
            lblFY2.Text = CDate(Server.HtmlDecode(Profile.FY_Ko1))
            lblFY.Text = CDate(Server.HtmlDecode(Profile.FY_Ko))
            GridView3.SelectedIndex = 0
            Call loadko()
            txtidno.Text = lblidno.Text
            txtbencoveredplan.Text = lblFY2.Text & " To " & lblFY.Text
        End If
    End Sub
    Protected Sub GridView3_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles GridView3.SelectedIndexChanged
        Call loadko()
        cmdnew.Enabled = True
        cmdsave.Enabled = False
    End Sub
    Sub loadko()
        'Dim gvRow As GridViewRow = GridView3.SelectedRow
        'If gvRow IsNot Nothing Then
        '    Dim lblFrom As Label = TryCast(gvRow.FindControl("Label1"), Label)
        '    Dim lblTo As Label = TryCast(gvRow.FindControl("Label2"), Label)
        '    Dim lblMAXEmp As Label = TryCast(gvRow.FindControl("Label3"), Label)
        '    Dim lblMAXDep As Label = TryCast(gvRow.FindControl("Label4"), Label)
        '    Dim lblDenEmp As Label = TryCast(gvRow.FindControl("Label5"), Label)
        '    Dim lblDenDep As Label = TryCast(gvRow.FindControl("Label6"), Label)
        '    txtfrom.Text = lblFrom.Text
        '    txtto.Text = lblTo.Text
        '    txtEmpBen.Text = lblMAXEmp.Text
        '    txtDepBen.Text = lblMAXDep.Text
        '    txtEmpDen.Text = lblDenEmp.Text
        '    txtDepDen.Text = lblDenDep.Text
        'End If
    End Sub
    Protected Sub cmdsave_Click(sender As Object, e As System.EventArgs) Handles cmdsave.Click
        If DropDownList3.SelectedItem.Text = "--select--" Then
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('Please Select Relationship')</script>")
            Exit Sub
        Else
            StudType = IIf(CheckBox2.Checked = True, "Y", "N")
            DepType_ = IIf(CheckBox1.Checked = True, "Primary", "")
            With SqlDS_DepLsit
                .InsertParameters("IDNo").DefaultValue = txtidno.Text
                .InsertParameters("Dependent").DefaultValue = txtnameofdep.Text
                .InsertParameters("Address").DefaultValue = txtaddress.Text
                .InsertParameters("Birthday").DefaultValue = txtbday.Text
                .InsertParameters("Relationship").DefaultValue = DropDownList3.SelectedItem.Text
                .InsertParameters("DepType").DefaultValue = DepType_
                .InsertParameters("Student").DefaultValue = StudType
                .InsertParameters("DateEncoded").DefaultValue = Date.Today.Date.ToString("MM") & "/" & Date.Today.Date.ToString("dd") & "/" & Date.Today.Date.ToString("yyyy")
                .InsertParameters("EncodedBy").DefaultValue = Membership.GetUser().UserName
                Try
                    .Insert()
                    Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('New Dependet Has Been Added')</script>")
                Catch d As Exception
                    Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert(" & d.Message & ")</script>")
                End Try
            End With
            cmdnew.Enabled = True
            cmdsave.Enabled = False
            Call DisEnabled()
        End If
    End Sub
    Protected Sub cmdnew_Click(sender As Object, e As System.EventArgs) Handles cmdnew.Click
        cmdnew.Enabled = False
        cmdsave.Enabled = True
        Call ClearText()
        Call EnabledText()
    End Sub
    Protected Sub cmdcancel_Click(sender As Object, e As System.EventArgs) Handles cmdcancel.Click
        cmdnew.Enabled = True
        cmdsave.Enabled = False
        ' Call loadko()
        Call ClearText()
        Call DisEnabled()
    End Sub
    Sub ClearText()
        ' txtbencoveredplan.Text = ""
        txtaddress.Text = ""
        'txtidno.Text = ""
        txtnameofdep.Text = ""
        txtnameofemp.Text = ""
        txtbday.Text = ""
        DepType_ = ""
        StudType = ""
    End Sub
    Sub EnabledText()
        txtnameofdep.ReadOnly = False
        txtaddress.ReadOnly = False
        txtbday.ReadOnly = False
        txtnameofemp.ReadOnly = False
        'txtidno.ReadOnly = False
        DropDownList3.Enabled = True
        CheckBox1.Enabled = True
        CheckBox2.Enabled = True
    End Sub
    Sub DisEnabled()
        txtnameofdep.ReadOnly = True
        txtaddress.ReadOnly = True
        txtbday.ReadOnly = True
        txtnameofemp.ReadOnly = True
        ' txtidno.ReadOnly = True
        DropDownList3.Enabled = False
        CheckBox1.Enabled = False
        CheckBox2.Enabled = False
    End Sub
End Class
