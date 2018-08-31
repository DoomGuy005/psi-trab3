<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitleNew.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormTitleNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Inserir Livro" Font-Names="Calibri"></asp:Label>
            <hr />
            <asp:TextBox ID="TextBoxTitleID" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True" Font-Underline="False">Código</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxTitle" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Título</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxPubID" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Editora</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxPrice" runat="server" Font-Names="Calibri" Width="300px">Preço</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxPubDate" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Data de Publicação</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxNotes" runat="server" Font-Names="Calibri" Width="300px" Height="70px" TextMode="MultiLine">Descrição</asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Salvar" Font-Names="Calibri" OnClick="Button1_Click" />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Digite o Código do Livro!" ControlToValidate="TextBoxTitleID"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Digite o Título do Livro!" ControlToValidate="TextBoxTitle"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Digite o Código da Editora!" ControlToValidate="TextBoxPubID"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Digite a Data de Publicação" ControlToValidate="TextBoxPubDate"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
