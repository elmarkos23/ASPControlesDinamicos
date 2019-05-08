<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ASPControlesDinamicos.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 class="display-3">Controles Dinamicos</h1>
                <p class="lead">
                    <asp:Button ID="btnAdd" runat="server" Text="Add Text" OnClick="btnAdd_Click" CssClass="btn btn-success" />
                    <asp:Button ID="btnAddButton" runat="server" Text="Add Button" OnClick="btnAddButton_Click" CssClass="btn btn-success" />
                    <asp:Button ID="btnGet" runat="server" Text="Get Text" OnClick="btnGet_Click" CssClass="btn btn-primary" />
                </p>
                <asp:Label ID="lblResulado" runat="server" />
                <hr />
                <asp:Panel ID="pnlTextBoxes" runat="server" CssClass="row" />
                <asp:Panel ID="pnlButton" runat="server" CssClass="row" />
            </div>
        </div>
        <hr />
    </form>
</body>
</html>
