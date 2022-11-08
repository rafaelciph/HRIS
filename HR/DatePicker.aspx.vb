Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class UsingCalendarControl_DatePicker
    Inherits System.Web.UI.Page
    Protected Sub Calendar1_DayRender(sender As Object, e As DayRenderEventArgs)
        Dim ctrl As String = Request.QueryString("ctl")
        Dim hpl As New HyperLink()
        hpl.Text = DirectCast(e.Cell.Controls(0), LiteralControl).Text
        hpl.NavigateUrl = (Convert.ToString("javascript:SetDate('" + e.Day.[Date].ToShortDateString() + "','") & ctrl) + "');"
        e.Cell.Controls.Clear()
        e.Cell.Controls.Add(hpl)
    End Sub
End Class