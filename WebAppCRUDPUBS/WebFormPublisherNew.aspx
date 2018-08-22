<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormPublisherNew.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormPublisherNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Text="Inserir Editora"></asp:Label>
            <hr />
            <br />
                  <asp:Label ID="Label2" runat="server" Text="Código" Style="display:inline;"></asp:Label>
                  <asp:TextBox ID="TextBoxPubId" Style="display:inline;" runat="server"></asp:TextBox>
            <br />
                  <asp:Label ID="Label3" runat="server" Text="Editora"></asp:Label>
                  <asp:TextBox ID="TextBoxPub" runat="server"></asp:TextBox>
            <br />
                  <asp:Label ID="Label4" runat="server" Text="Cidade"></asp:Label>
                  <asp:TextBox ID="TextBox2PubCity" runat="server"></asp:TextBox>
            <br/>      
                  <asp:Label ID="Label5" runat="server" Text="Estado"></asp:Label>
                  <asp:TextBox ID="TextBox3PubState" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
