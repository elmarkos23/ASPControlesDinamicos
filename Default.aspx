<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPControlesDinamicos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
              <div class="jumbotron">
                <h1 class="display-4">Controles Dinamicos</h1>
              <div class="row">
                  <div class="col-md-4"><b>Nombre Campo</b>
                      <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                  </div>
                  <div class="col-md-4"><b>Tipo</b>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlTipo">
                        <asp:ListItem Value="txt">Texto</asp:ListItem>
                        <asp:ListItem Value="lbl">Etiqueta</asp:ListItem>
                        <asp:ListItem Value="btn">Botón</asp:ListItem>
                    </asp:DropDownList>
                  </div>
                  <div class="col-md-4"><br />
                      <asp:Button runat="server" Text="Agregar" CssClass="btn btn-primary" ID="btnAgregar"  OnClick="btnAgregar_Click" />
                      <asp:Button runat="server" Text="Ejecutar" CssClass="btn btn-warning" ID="btnEjecutar"  OnClick="btnEjecutar_Click" />
                  </div>
              </div> 
                  <hr />
                  <h1 class="display-4">Reglas</h1>
                  <asp:ListBox CssClass="form-control" runat="server" ID="lbReglas">
                      <asp:ListItem Text="a+b" Value="formula1"></asp:ListItem>
                  </asp:ListBox>
                  <h1 class="display-4">Resultados</h1>
                  <asp:Label runat="server" ID="lblResult" />
              </div>
            <asp:PlaceHolder runat="server" ID="phFormulario"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
