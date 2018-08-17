<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthors.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormAuthors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cadastro de Autores" Font-Names="Verdana"></asp:Label>
            <hr/>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Names="Calibri" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" PageSize="5" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="au_id" HeaderText="ID" SortExpression="au_id" />
                    <asp:BoundField DataField="au_name" HeaderText="Nome" SortExpression="au_name" />
                    <asp:BoundField DataField="au_fname" HeaderText="Sobrenome" SortExpression="au_fname" />
                    <asp:BoundField DataField="phone" HeaderText="Fone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Endereço" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="CEP" SortExpression="zip" />
                    <asp:CheckBoxField DataField="contract" HeaderText="Contratado" SortExpression="contract" />
                    <asp:ButtonField ButtonType="Button" CommandName="Editar" Text="Editar" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPUBS.DAL.DALAuthors" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
