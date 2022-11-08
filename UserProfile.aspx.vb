
Partial Class UserProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Roles.IsUserInRole("Staff") Or Not Roles.IsUserInRole("Admin") Then
            Response.Redirect("~/Account/Login.aspx")
        End If
        If Not Page.IsPostBack Then
            txtidno.Text = Server.HtmlDecode(Profile.Idno)
            txtname.Text = Server.HtmlDecode(Profile.Name)
            txtemail.Text = Server.HtmlDecode(Profile.Email)
            DPLDept.Text = Server.HtmlDecode(Profile.Dept)
            DPLDept.Enabled = False

        End If
        If Left$(txtidno.Text, 3) = "PH-" Then
            txtidno.ReadOnly = False
            txtname.ReadOnly = False
        ElseIf Left$(txtidno.Text, 5) = "60800" Then
            txtidno.ReadOnly = True
            txtname.ReadOnly = True
            txtemail.ReadOnly = True
        End If
    End Sub

    Protected Sub cmdSave_Click(sender As Object, e As System.EventArgs) Handles cmdSave.Click
        lblinfo.Text = ""
        txtidno.ReadOnly = True
        txtname.ReadOnly = True
        txtemail.ReadOnly = True
        DPLDept.Enabled = False
        Profile.Idno = Server.HtmlEncode(txtidno.Text)
        Profile.Name = Server.HtmlEncode(txtname.Text)
        Profile.Email = Server.HtmlEncode(txtemail.Text)
        Profile.Dept = Server.HtmlEncode(DPLDept.Text)
        lblinfo.Text = "User Profile Updated..."
    End Sub


    Protected Sub cmdedit_Click(sender As Object, e As System.EventArgs) Handles cmdedit.Click
        txtidno.ReadOnly = False
        txtname.ReadOnly = False
        txtemail.ReadOnly = False
        DPLDept.Enabled = True
    End Sub
End Class
