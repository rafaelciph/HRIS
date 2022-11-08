


Partial Class HR_Employee
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label2.Text = Server.HtmlDecode(Profile.Idno)
    End Sub
End Class
