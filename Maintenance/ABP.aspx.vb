
Partial Class Maintenance_ABP
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        If Not Roles.IsUserInRole("Staff") Or Not Roles.IsUserInRole("Admin") Then
            Response.Redirect("~/Account/Login.aspx")
        End If

        If Not Page.IsPostBack Then
            lblidno.Text = Server.HtmlDecode(Profile.Idno)
            lblFY2.Text = CDate(Server.HtmlDecode(Profile.FY_Ko1))
            lblFY.Text = CDate(Server.HtmlDecode(Profile.FY_Ko))
            'MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
            ' txtfrom.Text = Date.Today.Date
            ' txtto.Text = Date.Today.Date
            GridView3.SelectedIndex = 0
            Call loadko()
        End If
    End Sub

    Protected Sub GridView3_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles GridView3.SelectedIndexChanged
        Call loadko()
        cmdnew.Enabled = True
        cmdsave.Enabled = False
    End Sub
    Sub loadko()
        Dim gvRow As GridViewRow = GridView3.SelectedRow
        If gvRow IsNot Nothing Then
            Dim lblFrom As Label = TryCast(gvRow.FindControl("Label1"), Label)
            Dim lblTo As Label = TryCast(gvRow.FindControl("Label2"), Label)
            Dim lblMAXEmp As Label = TryCast(gvRow.FindControl("Label3"), Label)
            Dim lblMAXDep As Label = TryCast(gvRow.FindControl("Label4"), Label)
            Dim lblDenEmp As Label = TryCast(gvRow.FindControl("Label5"), Label)
            Dim lblDenDep As Label = TryCast(gvRow.FindControl("Label6"), Label)
            txtfrom.Text = lblFrom.Text
            txtto.Text = lblTo.Text
            txtEmpBen.Text = lblMAXEmp.Text
            txtDepBen.Text = lblMAXDep.Text
            txtEmpDen.Text = lblDenEmp.Text
            txtDepDen.Text = lblDenDep.Text
        End If
    End Sub

    Protected Sub cmdnew_Click(sender As Object, e As System.EventArgs) Handles cmdnew.Click
        cmdnew.Enabled = False
        cmdsave.Enabled = True
        Call cleartext()
    End Sub
    Sub cleartext()
        txtfrom.Text = ""
        txtto.Text = ""
        txtEmpBen.Text = ""
        txtDepBen.Text = ""
        txtEmpDen.Text = ""
        txtDepDen.Text = ""

        txtfrom.ReadOnly = False
        txtto.ReadOnly = False
        txtEmpBen.ReadOnly = False
        txtDepBen.ReadOnly = False
        txtEmpDen.ReadOnly = False
        txtDepDen.ReadOnly = False
    End Sub

    Protected Sub cmdcancel_Click(sender As Object, e As System.EventArgs) Handles cmdcancel.Click
        cmdnew.Enabled = True
        cmdsave.Enabled = False
        Call loadko()
        txtfrom.ReadOnly = True
        txtto.ReadOnly = True
        txtEmpBen.ReadOnly = True
        txtDepBen.ReadOnly = True
        txtEmpDen.ReadOnly = True
        txtDepDen.ReadOnly = True
    End Sub

    Protected Sub cmdsave_Click(sender As Object, e As System.EventArgs) Handles cmdsave.Click
        With SqlDS_ABP
            .InsertParameters("EDFrom").DefaultValue = txtfrom.Text
            .InsertParameters("EDTo").DefaultValue = txtto.Text
            .InsertParameters("MaxEmployee").DefaultValue = txtEmpBen.Text
            .InsertParameters("MaxDependent").DefaultValue = txtDepBen.Text
            .InsertParameters("DenEmployee").DefaultValue = txtEmpDen.Text
            .InsertParameters("DenDependent").DefaultValue = txtDepDen.Text
            .InsertParameters("DateEncoded").DefaultValue = Date.Today.Date.ToString("MM") & "/" & Date.Today.Date.ToString("dd") & "/" & Date.Today.Date.ToString("yyyy")
            .InsertParameters("EncodedBy").DefaultValue = Membership.GetUser().UserName 'Server.HtmlDecode(Profile.Name)
            Try
                .Insert()
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('New Benefit Plan Successfuly Save')</script>")
            Catch d As Exception
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert(" & d.Message & ")</script>")
            End Try
        End With
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Label7.Text = String.Format("{0:#,##0.00}", Double.Parse(TextBox7.Text))
    End Sub
End Class
