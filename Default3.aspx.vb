
Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.PreviousPage Is Nothing Then
            Dim SourceTextBox As TextBox
            SourceTextBox = CType(PreviousPage.FindControl("TextBox1"),  _
                TextBox)
            If Not SourceTextBox Is Nothing Then
                Label1.Text = SourceTextBox.Text
            End If
        End If
    End Sub
End Class
