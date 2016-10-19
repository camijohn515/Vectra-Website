<%@ Page Language="VB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub TextBox7_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim mailobj As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient
        Dim Mailmsg As New System.Net.Mail.MailMessage
        Mailmsg.To.Clear()
        Mailmsg.To.Add(New System.Net.Mail.MailAddress("customerservice@vectraspray.com"))
        Mailmsg.From = New System.Net.Mail.MailAddress("customerservice@vectraspray.com")
        Mailmsg.Subject = ("ONSITE VECTRA NO-STAIN APPLICATIONS")
        Try
            Mailmsg.Body = "test email"
            mailobj.Send(Mailmsg)
           
        Catch ex As Exception
            Response.Write("Error sending mail: " & ex.ToString())
        End Try
        Response.Redirect("http://www.vectraspray.com")
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; font-size: large; text-align: center">
    
        VECTRA ENTERPRISES, INC.<br />
        ATLANTA SERVICE CENTER
        <br />
        <a href="mailto:customerservice@vectraspray.com">customerservice@vectraspray.com</a><br />
        <a href="http://www.vectraspray.com">www.vectraspray.com</a><br />
        Phone: 404-233-2074</div>
    <p>
        &nbsp;</p>
    <p>
        Fabric Protector&#39;s Price Schedule for ON-SITE VECTRA NO-STAIN APPLICATIONS</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;
        <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAdd1" runat="server" ontextchanged="TextBox2_TextChanged" 
            Height="22px" Width="162px"></asp:TextBox>
    </p>
    <p>
      
        <asp:Label ID="Label3" runat="server" Text="Address 2" width="74px"></asp:Label>
         &nbsp;
        <asp:TextBox ID="txtAddr2" runat="server" style="margin-bottom: 0px" 
            width="162px"></asp:TextBox>
    </p>
    <p>
        &nbsp;
        <asp:Label ID="Label4" runat="server" Text="City" Height="16px"></asp:Label>
&nbsp;<asp:TextBox ID="txtCity" runat="server" width="162px"></asp:TextBox>
    </p>
    <p>
     <asp:Label runat="server" Text="State"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtZip" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Email Address"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Alternate Phone"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtAltPhone" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Location of Spray Work"></asp:Label>
&nbsp;<asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;
        <asp:Label ID="Label12" runat="server" Text="Date Required"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtDueDate" runat="server"></asp:TextBox>
        </p>
             <p>
        Special Instructions</p>
    <p>
         
<asp:TextBox ID="txtSpecialInstructions" runat="server" Height="125px" TextMode="MultiLine" 
            Width="424px"></asp:TextBox>
    </p>
    <p>
         
        &nbsp;</p>
    <p>
         
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
            Text="Submit" />
    </p>
    <p>
        &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
