<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ASPControlesDinamicos.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <asp:Panel ID="pnlTextBoxes" runat="server">
</asp:Panel>
<hr />
<asp:Button ID="btnAdd" runat="server" Text="Add New" OnClick="btnAdd_Click" />
<asp:Button ID="btnGet" runat="server" Text="Get Values" OnClick="btnGet_Click" />
    </form>
</body>
</html>
