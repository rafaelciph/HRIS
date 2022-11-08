
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        If Not Roles.IsUserInRole("Staff") Or Not Roles.IsUserInRole("Admin") Then
            Response.Redirect("~/Account/Login.aspx")
        End If
        If Not Page.IsPostBack Then Label1.Text = CDate(Server.HtmlDecode(Profile.FY_Ko))
    End Sub

End Class
