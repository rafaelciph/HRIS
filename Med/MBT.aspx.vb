Imports System
Imports System.Data.SqlClient
Imports System.Data
Partial Class Med_MBT
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
            GridView3.SelectedIndex = 0
            mebDate.Text = Date.Today.Date.ToString("MM") & "/" & Date.Today.Date.ToString("dd") & "/" & Date.Today.Date.ToString("yyyy")
        End If
    End Sub
    Protected Sub cboDep_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles cboDep.SelectedIndexChanged
        'lblrelation.Text = cboDep.SelectedValue.ToString
        lblid.Text = cboDep.SelectedValue.ToString
        Call getdatako()
    End Sub
    Private Sub getdatako()
        Dim datardr As SqlDataReader
        Dim strings = System.Configuration.ConfigurationManager.ConnectionStrings("HRDSConnectionString").ConnectionString
        Using con As New SqlConnection(strings)
            Using cmd As New SqlCommand("SELECT  ID, IDNo,Dependent, Birthday,Relationship, DepType, Student FROM  HRDS_Dependents_Mast  WHERE ID = '" & lblid.Text & "'")
                cmd.CommandType = CommandType.Text
                cmd.Connection = con
                con.Open()
                datardr = cmd.ExecuteReader
                While datardr.Read
                    'lblname.Text = datardr("emp_firstname").ToString & " " & datardr("emp_lastname").ToString
                    lblrelation.Text = datardr("Relationship").ToString
                    lblDepBday.Text = Format("mm/dd/yyyy", datardr("Birthday")).ToString
                End While
                datardr.Close()
                con.Close()
            End Using
        End Using
    End Sub
End Class
