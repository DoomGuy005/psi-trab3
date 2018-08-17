<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsNew.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormAuthorsNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Inserir Autor" Font-Names="Calibri"></asp:Label>
            <hr />
            <asp:TextBox ID="TextBoxAuID" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True" Font-Underline="False">Código</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxFName" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Primeiro Nome:</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxLName" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Último Nome</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxPhone" runat="server" Font-Names="Calibri" Width="300px">Fone</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxAddress" runat="server" Font-Names="Calibri" Width="300px" Font-Bold="True">Endereço</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxCity" runat="server" Font-Names="Calibri" Width="300px" Height="70px">Cidade</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxState" runat="server" Font-Names="Calibri" Width="300px" Height="70px">Estado</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxZip" runat="server" Font-Names="Calibri" Width="300px" Height="70px">CEP</asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Salvar" Font-Names="Calibri" OnClick="Button1_Click" />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Digite o Código do Autor!" ControlToValidate="TextBoxAuID"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Digite o 1º Nome do Autor!" ControlToValidate="TextBoxFName"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Digite o 2º Nome do Autor!" ControlToValidate="TextBoxLName"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Digite o Fone do Autor!" ControlToValidate="TextBoxPhone"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
