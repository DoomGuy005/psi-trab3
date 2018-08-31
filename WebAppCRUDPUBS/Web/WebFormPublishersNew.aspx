<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormPublishersNew.aspx.cs" Inherits="WebAppCRUDPUBS.Web.WebFormPublishersNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Inserir Editora"></asp:Label>
            <hr />
            <asp:Label ID="Label2" runat="server" Text="Código: "></asp:Label>
            <asp:TextBox ID="TextBoxPubID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Código é obrigatório" ControlToValidate="TextBoxPubID"></asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="Label3" runat="server" Text="Nome da Editora: "></asp:Label>
            <asp:TextBox ID="TextBoxPubName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nome é obrigatório" ControlToValidate="TextBoxPubName"></asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="Label4" runat="server" Text="Cidade: "></asp:Label>
            <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label5" runat="server" Text="Estado: "></asp:Label>
            <asp:TextBox ID="TextBoxState" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label6" runat="server" Text="País: "></asp:Label>
            <asp:TextBox ID="TextBoxCountry" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="Label7" runat="server" Text="Informações: "></asp:Label>
            <asp:TextBox ID="TextBoxPrInfo" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br/>
            <asp:Label ID="Label8" runat="server" Text="Logotipo: "></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
