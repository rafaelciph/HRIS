Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Partial Class HR_Attendance
    Inherits System.Web.UI.Page
    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        If Me.DropDownList2.SelectedValue = 0 Then
            'Me.lblcode.Text = "Reimb"
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
        ElseIf Me.DropDownList2.SelectedValue = 1 Then
            'Me.lblcode.Text = "CA"
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
        Else
            'Me.lblFY.Text = ""
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        If Not Roles.IsUserInRole("Staff") Or Not Roles.IsUserInRole("Admin") Then
            Response.Redirect("~/Account/Login.aspx")
        End If

        If Not Page.IsPostBack Then
            TextBox16.Text = Date.Today.Date.ToString("MM") & "/" & "01" & "/" & Date.Today.Date.ToString("yyyy")
            lblidno.Text = Server.HtmlDecode(Profile.Idno)
            lblFY2.Text = CDate(Server.HtmlDecode(Profile.FY_Ko1))
            lblFY.Text = CDate(Server.HtmlDecode(Profile.FY_Ko))
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
            txtfrom.Text = TextBox16.Text
            txtto.Text = Date.Today.Date
        End If
    End Sub
End Class
