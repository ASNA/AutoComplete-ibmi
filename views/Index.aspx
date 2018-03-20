<%@ Page Language="AVR" AutoEventWireup="false" CodeFile="Index.aspx.vr" Inherits="views_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <label>Name</label>
    <asp:TextBox ID="textboxName" style="width:16rem;" runat="server" ClientIDMode="Static"/>
    <br />        
    <asp:HiddenField ID="hiddenCustomerNumber" runat="server" ClientIDMode="Static" />
    <br />
    <label>Address</label>
    <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" />
    <br />
    <br />
    <br />
    <asp:Button ID="buttonSubmit" runat="server" Text="Submit" />
    <br />    
    </div>
    </form>

<script src="../assets/vendors/asna/js/rp.lib.min.js"></script>
<script src="../assets/js/index.aspx.js"></script>
</body>
</html>
