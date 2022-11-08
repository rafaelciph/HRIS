Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Partial Class Req_Request
    Inherits System.Web.UI.Page
    Dim FullOB As Single
    Dim CLExpiredate As Date
    Dim Daysss As Integer
    Dim CLInt, CLValue, CLDec As Single
    Dim IDNO_KO, Reason_KO, Startdateko, Enddateko As String
    Dim TRMin, OrasPM As Integer

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        If Me.DropDownList2.SelectedValue = 0 Then
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
        ElseIf Me.DropDownList2.SelectedValue = 1 Then
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
        Else
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
            lbldept.Text = Server.HtmlDecode(Profile.Dept)
            MultiView1.ActiveViewIndex = DropDownList2.SelectedValue
            txtfrom.Text = TextBox16.Text
            txtto.Text = Date.Today.Date
        End If
    End Sub

    Protected Sub cmdnew_Click(sender As Object, e As System.EventArgs) Handles cmdnew.Click
        Call cleartext()
        Me.txtstartdate.Text = Date.Today.Date
        Me.txtenddate.Text = Date.Today.Date
        'txtnoofdays.Text = DateDiff("d", txtstartdate, txtenddate)
        txtnoofdays.Text = Val(txtnoofdays.Text) + 1
        DropDownList3.Text = "Whole Day"
    End Sub

    Sub cleartext()
        Me.txtstartdate.Text = ""
        Me.txtenddate.Text = ""
        Me.txtnoofdays.Text = ""
        Me.txtreason.Text = ""
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        If DropDownList3.Text = "Whole Day" Then
            txtnoofdays.Text = "1"
        ElseIf DropDownList3.Text = "Half Day-AM" Then
            txtnoofdays.Text = "0.5"
        ElseIf DropDownList3.Text = "Half Day-PM" Then
            txtnoofdays.Text = "0.5"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        txtnoofdays.Text = DateDiff("d", txtstartdate.Text, txtenddate.Text)
        txtnoofdays.Text = Val(txtnoofdays.Text) + 1
        DropDownList3.Text = "Whole Day"
    End Sub

    Protected Sub cmdsave_Click(sender As Object, e As System.EventArgs) Handles cmdsave.Click
        Dim LT As String = DropDownList6.SelectedItem.ToString
        Dim contr_save As String = ConfigurationManager.ConnectionStrings("HRDSConnectionString").ConnectionString
        Using con As New SqlConnection(contr_save)
            Using cmd_insert As New SqlCommand("INSERT INTO HRDS_LEAVE_TRAN (IDNo,IDOB,deptcode,StartDate,Enddate,DebitDays,LeaveType,Paycode,DayType,Approver,Approval,Reason,DateAdded,AddedBy,ApprovedBy,DateApproved,Processed,DateProcessed,Validity) VALUES (@idno, @idob, @deptcode,@StartDate, @Enddate, @DebitDays, @LeaveType, @Paycode, @DayType, @Approver, @Approval, @Reason, @DateAdded, @AddedBy , @ApprovedBy, @DateApproved, @Processed, @DateProcessed, @Validity)")
                Using sda As New SqlDataAdapter()
                    cmd_insert.Parameters.AddWithValue("@IDNo", lblidno.Text)
                    cmd_insert.Parameters.AddWithValue("@IDOB", "")
                    cmd_insert.Parameters.AddWithValue("@deptcode", "Dept")
                    cmd_insert.Parameters.AddWithValue("@StartDate", txtstartdate.Text)
                    cmd_insert.Parameters.AddWithValue("@EndDate", txtenddate.Text)
                    cmd_insert.Parameters.AddWithValue("@DebitDays", txtnoofdays.Text)
                    cmd_insert.Parameters.AddWithValue("@LeaveType", LT)
                    cmd_insert.Parameters.AddWithValue("@Paycode", DropDownList4.Text)
                    cmd_insert.Parameters.AddWithValue("@DayType", DropDownList3.Text)
                    cmd_insert.Parameters.AddWithValue("@Approver", DropDownList5.SelectedValue)
                    cmd_insert.Parameters.AddWithValue("@Approval", "")
                    cmd_insert.Parameters.AddWithValue("@Reason", txtreason.Text)
                    cmd_insert.Parameters.AddWithValue("@DateAdded", Format(Date.Now.Date, "MM/dd/yyyy"))
                    cmd_insert.Parameters.AddWithValue("@AddedBy", Server.HtmlDecode(Profile.UserName))
                    cmd_insert.Parameters.AddWithValue("@ApprovedBy", "")
                    cmd_insert.Parameters.AddWithValue("@DateApproved", DBNull.Value)
                    cmd_insert.Parameters.AddWithValue("@Processed", "N")
                    cmd_insert.Parameters.AddWithValue("@DateProcessed", DBNull.Value)
                    cmd_insert.Parameters.AddWithValue("@Validity", lblFY.Text)
                    cmd_insert.Connection = con
                    con.Open()
                    cmd_insert.ExecuteNonQuery()
                    con.Close()
                    Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('New Record Successfuly Save')</script>")
                    'Page_Load()
                End Using
            End Using
        End Using
    End Sub

    Private Sub Page_Load()
        Response.Redirect("~/Req/Request.aspx")
    End Sub

    Protected Sub txtenddate_TextChanged(sender As Object, e As System.EventArgs) Handles txtenddate.TextChanged
        txtnoofdays.Text = DateDiff("d", txtstartdate.Text, txtenddate.Text)
        txtnoofdays.Text = Val(txtnoofdays.Text) + 1
        DropDownList3.Text = "Whole Day"
    End Sub
    ' for fied Work module
    Sub Holiday_daw()
        FullOB = 0
        Dim d As DateTime = txtstartdatefw.Text
        Dim dd As DateTime = txtenddatefw.Text
        While d <= dd
            ' do stuff here
            'increment date by whatever you want
            ' such as 1 day for example
            d = d.AddDays(1)
        End While
        MsgBox("done")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        If txtstartdatefw.Text = "" Or txtenddatefw.Text = "" Then
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('Date Not Selected.       Please Fillup The Date' )</script>")
            Exit Sub
        End If

        Dim dr As SqlDataReader
        Dim FULLOB, FULLOBW As Integer
        Dim d As DateTime = txtstartdatefw.Text
        Dim dd As DateTime = txtenddatefw.Text

        Dim contr_savehol As String = ConfigurationManager.ConnectionStrings("HRDSConnectionString").ConnectionString
        Using con_hol As New SqlConnection(contr_savehol)

            While d <= dd
                Label20.Text = ""
                Using cmdhol As New SqlCommand("spsearchHoliday", con_hol)
                    cmdhol.CommandType = CommandType.StoredProcedure
                    Dim HolDateParameter As SqlParameter = New SqlParameter("@HolDate", d)
                    cmdhol.Parameters.Add(HolDateParameter)
                    con_hol.Open()
                    dr = cmdhol.ExecuteReader()
                    While dr.Read 'DataReader
                        Label20.Text = dr("HolType").ToString
                    End While
                    dr.Close()
                    con_hol.Close()
                    If Label20.Text <> "" Then FULLOB = FULLOB + 1
                    Label20.Text = ""
                    If (d.ToString("ddd")).ToString = "Sun" Or (d.ToString("ddd")).ToString = "Sat" Then FULLOBW = FULLOBW + 1
                End Using
                d = d.AddDays(1)
            End While
            Call ThreeDayRules()
            txtnohol.Text = FULLOB
            txttotweekend.Text = FULLOBW
            txttotcl.Text = FULLOB + FULLOBW
            If txtnohol.Text = 0 And txttotweekend.Text = 0 Then txttotcl.Text = CLValue
        End Using
        'MsgBox("done")
        Call CLEXPIRED()

    End Sub
    Sub ThreeDayRules()
        CLInt = DateDiff("d", txtstartdatefw.Text, txtenddatefw.Text)
        CLInt = CLInt + 1
        Daysss = CLInt
        CLValue = (CLInt / 7)
        CLInt = Int(CLValue)
        CLDec = CLValue - CLInt
        If Daysss = 5 Then
            CLDec = 0.5 '1
        ElseIf CLDec >= 0.5 Then
            CLDec = 0.5
        Else
            CLDec = 0
        End If
        CLValue = CLInt + CLDec
    End Sub

    Protected Sub cmdsave0_Click(sender As Object, e As System.EventArgs) Handles cmdsave0.Click
        If Label21.Text = "" Then
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('You must click the calc.. button to calculate the Date Expiration of your CL')</script>")
            Exit Sub 'ddsfdsf
        End If

        If GridView8.Rows.Count >= 1 Then
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('You have already filed a field work request on this date')</script>")
        Else
            Call Save_OB()
        End If
    End Sub
    Sub Save_OB()
        With SqlDataSourceFW
            .InsertParameters("IDNo").DefaultValue = lblidno.Text
            .InsertParameters("Deptcode").DefaultValue = lbldept.Text
            .InsertParameters("StartDate").DefaultValue = txtstartdatefw.Text
            .InsertParameters("EndDate").DefaultValue = txtenddatefw.Text
            .InsertParameters("DateCLExprire").DefaultValue = Label21.Text
            .InsertParameters("AssignedCL").DefaultValue = 0
            .InsertParameters("BalCL").DefaultValue = 0
            .InsertParameters("UseCL").DefaultValue = "No"
            .InsertParameters("Type").DefaultValue = "Regular"
            .InsertParameters("CLValue").DefaultValue = txttotcl.Text
            .InsertParameters("CLValue_").DefaultValue = txttotcl.Text
            .InsertParameters("Approver").DefaultValue = DropDownList7.SelectedValue
            '.InsertParameters("Approval").DefaultValue = ""
            .InsertParameters("Reason").DefaultValue = txtreasonfw.Text
            .InsertParameters("DateAdded").DefaultValue = Date.Today.Date.ToString("MM") & "/" & Date.Today.Date.ToString("dd") & "/" & Date.Today.Date.ToString("yyyy")
            .InsertParameters("AddedBy").DefaultValue = Membership.GetUser().UserName 'Server.HtmlDecode(Profile.Name)
            '.InsertParameters("ApprovedBy").DefaultValue = ""
            .InsertParameters("DateApproved").DefaultValue = DBNull.Value.ToString
            .InsertParameters("Processed").DefaultValue = "N"
            .InsertParameters("DateProcessed").DefaultValue = DBNull.Value.ToString
            .InsertParameters("ValidityDate").DefaultValue = lblFY.Text
            .InsertParameters("Status").DefaultValue = 0
            .InsertParameters("SaveStats").DefaultValue = 0
            .InsertParameters("SaveAssignedCL").DefaultValue = 0
            Try
                .Insert()
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('New Field Work Record Successfuly Save')</script>")
            Catch d As Exception
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert(" & d.Message & ")</script>")
            End Try
        End With
        cmdsave0.Enabled = False
        cmdnew0.Enabled = True
    End Sub

    Sub CLEXPIRED()
        Dim dy As Integer
        Dim tdate As Date
        Dim tdd As Date
        Dim ifholday, tdtdtd As String

        Dim exp_date As Date = Date.Today.Date.AddDays(-1)
        Dim drHol As SqlDataReader
        tdate = txtenddatefw.Text
        Do While Not dy = Val("14") 'get the day counter
            ifholday = ""
            Dim contr_savehol As String = ConfigurationManager.ConnectionStrings("HRDSConnectionString").ConnectionString
            Using con_hol As New SqlConnection(contr_savehol)

                Using cmdhol As New SqlCommand("spsearchHoliday", con_hol)
                    cmdhol.CommandType = CommandType.StoredProcedure
                    Dim HolDateParameter As SqlParameter = New SqlParameter("@HolDate", tdate)
                    cmdhol.Parameters.Add(HolDateParameter)
                    con_hol.Open()
                    drHol = cmdhol.ExecuteReader()
                    While drHol.Read 'DataReader
                        ifholday = drHol("HolType").ToString
                    End While
                    drHol.Close()
                    con_hol.Close()
                End Using
            End Using
            tdtdtd = ""
            tdtdtd = tdate.ToString("ddd").ToString
            If tdtdtd = "Sat" Then
                'Do Nothing
            ElseIf tdtdtd = "Sun" Then
                'Do Nothing 
            ElseIf tdtdtd <> "Sat" Or tdtdtd <> "Sun" Then
                dy = dy + 1
            ElseIf ifholday = "" Then
                'Do Nothing
                dy = dy + 1
            End If
            tdate = tdate.AddDays(1)
            tdd = tdate
        Loop
        exp_date = tdate
        If Date.Today > exp_date Then
            CLExpiredate = CDate(exp_date)
            Label21.Text = CDate(exp_date)
        Else
            CLExpiredate = CDate(exp_date)
            Label21.Text = CDate(exp_date)
        End If
    End Sub

    Protected Sub cmdnew0_Click(sender As Object, e As System.EventArgs) Handles cmdnew0.Click
        Call cleartextFW()
        cmdsave0.Enabled = True
        cmdnew0.Enabled = False
    End Sub

    Sub cleartextFW()
        Label21.Text = ""
        txtstartdatefw.Text = ""
        txtenddatefw.Text = ""
        txttotweekend.Text = ""
        txtnohol.Text = ""
        txttotcl.Text = ""
        txtreasonfw.Text = ""
    End Sub

    Protected Sub DropDownList6_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DropDownList6.SelectedIndexChanged
        If DropDownList6.SelectedItem.Text = "CL" Then Panel1.Visible = True
        If DropDownList6.SelectedItem.Text <> "CL" Then Panel1.Visible = False
    End Sub

    Protected Sub cmdcancel0_Click(sender As Object, e As System.EventArgs) Handles cmdcancel0.Click
        cmdsave0.Enabled = False
        cmdnew0.Enabled = True
    End Sub
    'Protected Sub Button4_Click(sender As Object, e As System.EventArgs) Handles Button4.Click
    '    Call toPM()
    '    If Mid(txttimeinout.Text, 7, 2) = "AM" Then
    '        Label22.Text = Left$(txttimeinout.Text, 2) & "" & Mid(txttimeinout.Text, 4, 2)
    '    ElseIf Mid(txttimeinout.Text, 7, 2) = "PM" Then
    '        Label22.Text = OrasPM & "" & Mid(txttimeinout.Text, 4, 2)
    '    End If
    '    'TextBox21.Text = OrasPM & "" & Mid(txttimeinout.Text, 4, 2)
    '    TRMin = Label22.Text
    '    If Len(CStr(TRMin)) < 3 Then
    '        TRMin = TRMin
    '    ElseIf Len(CStr(TRMin)) = 3 Then
    '        TRMin = Val(Mid(TRMin, 1, 1)) * 60 + Val(Mid(TRMin, 2, 2))
    '    Else
    '        TRMin = Val(Mid(TRMin, 1, 2)) * 60 + Val(Mid(TRMin, 3, 2))
    '    End If
    '    Label22.Text = TRMin

    '    'Dim StartTime As DateTime = DateTime.Parse(txttimeinout.Text)
    '    'Dim EndTime As DateTime = DateTime.Parse("04:00 PM")
    '    '' It converts this to 1600.
    '    'Dim ts As TimeSpan = EndTime - StartTime
    '    'Label22.Text = ts.TotalMinutes
    '    'Label22.Text = DateTime.ParseExact(txttimeinout.Text, "HHmm", CultureInfo.InvariantCulture)
    'End Sub
    Sub toPM()
        If Mid(txttimeinout.Text, 7, 2) = "AM" Then
            'Do Nothing
        ElseIf Mid(txttimeinout.Text, 7, 2) = "PM" Then
            If Left$(txttimeinout.Text, 2) = "01" Then OrasPM = "13"
            If Left$(txttimeinout.Text, 2) = "02" Then OrasPM = "14"
            If Left$(txttimeinout.Text, 2) = "03" Then OrasPM = "15"
            If Left$(txttimeinout.Text, 2) = "04" Then OrasPM = "16"
            If Left$(txttimeinout.Text, 2) = "05" Then OrasPM = "17"
            If Left$(txttimeinout.Text, 2) = "06" Then OrasPM = "18"
            If Left$(txttimeinout.Text, 2) = "07" Then OrasPM = "19"
            If Left$(txttimeinout.Text, 2) = "08" Then OrasPM = "20"
            If Left$(txttimeinout.Text, 2) = "09" Then OrasPM = "21"
            If Left$(txttimeinout.Text, 2) = "10" Then OrasPM = "22"
            If Left$(txttimeinout.Text, 2) = "11" Then OrasPM = "23"
        End If
    End Sub

    Sub TimeToNumber()
        Call toPM()
        If Mid(txttimeinout.Text, 7, 2) = "AM" Then
            Label22.Text = Left$(txttimeinout.Text, 2) & "" & Mid(txttimeinout.Text, 4, 2)
        ElseIf Mid(txttimeinout.Text, 7, 2) = "PM" Then
            Label22.Text = OrasPM & "" & Mid(txttimeinout.Text, 4, 2)
        End If
        'TextBox21.Text = OrasPM & "" & Mid(txttimeinout.Text, 4, 2)
        TRMin = Label22.Text
        If Len(CStr(TRMin)) < 3 Then
            TRMin = TRMin
        ElseIf Len(CStr(TRMin)) = 3 Then
            TRMin = Val(Mid(TRMin, 1, 1)) * 60 + Val(Mid(TRMin, 2, 2))
        Else
            TRMin = Val(Mid(TRMin, 1, 2)) * 60 + Val(Mid(TRMin, 3, 2))
        End If
        Label22.Text = TRMin
    End Sub

    Protected Sub cmdsave1_Click(sender As Object, e As System.EventArgs) Handles cmdsave1.Click
        Call TimeToNumber()
        Call Save_IO()
        cmdnew1.Enabled = True
        cmdsave1.Enabled = False
    End Sub
    Sub Save_IO()
        With SqlDS_Timeinreq
            .InsertParameters("IDNo").DefaultValue = lblidno.Text
            .InsertParameters("Deptcode").DefaultValue = lbldept.Text
            .InsertParameters("TDate").DefaultValue = txtdateinout.Text
            .InsertParameters("Swipe").DefaultValue = DropDownList9.SelectedItem.Text
            .InsertParameters("TTime").DefaultValue = txttimeinout.Text
            .InsertParameters("TMin").DefaultValue = Label22.Text
            .InsertParameters("Approver").DefaultValue = DropDownList8.SelectedValue
            .InsertParameters("Reason").DefaultValue = txtreasonfw0.Text
            .InsertParameters("AddedBy").DefaultValue = Membership.GetUser().UserName 'Server.HtmlDecode(Profile.Name)
            .InsertParameters("DateAdded").DefaultValue = Date.Today.Date.ToString("MM") & "/" & Date.Today.Date.ToString("dd") & "/" & Date.Today.Date.ToString("yyyy")
            .InsertParameters("DateApproved").DefaultValue = DBNull.Value.ToString
            Try
                .Insert()
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert('New Time In/Out Request Successfuly Save')</script>")
            Catch d As Exception
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "Script", "<script>alert(" & d.Message & ")</script>")
            End Try
        End With
    End Sub
    Protected Sub cmdnew1_Click(sender As Object, e As System.EventArgs) Handles cmdnew1.Click
        Call cleartext_INOUT()
        cmdnew1.Enabled = False
        cmdsave1.Enabled = True
    End Sub
    Protected Sub cmdcancel1_Click(sender As Object, e As System.EventArgs) Handles cmdcancel1.Click
        Call cleartext_INOUT()
        cmdnew1.Enabled = True
        cmdsave1.Enabled = False
    End Sub
    Sub cleartext_INOUT()
        txtdateinout.Text = ""
        txttimeinout.Text = ""
        txtreasonfw0.Text = ""
    End Sub
End Class
