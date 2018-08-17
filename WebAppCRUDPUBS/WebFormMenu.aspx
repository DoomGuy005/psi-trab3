<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMenu.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink NavigateUrl="~/WebFormTitle.aspx" ID="HyperLink1" Text="Cadastro de Livros" runat="server" Font-Names="Verdana"></asp:HyperLink>
            <br />
            <asp:HyperLink NavigateUrl="~/WebFormAuthors.aspx" ID="HyperLink2" Text="Cadastro de Autores" runat="server" Font-Names="Verdana"></asp:HyperLink>
            <br />
            <asp:HyperLink NavigateUrl="~/WebFormPublishers.aspx" ID="HyperLink3" Text="Cadastro de Editoras" runat="server" Font-Names="Verdana"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
