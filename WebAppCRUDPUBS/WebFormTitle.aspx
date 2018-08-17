<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitle.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormTitle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cadastro de Livros" Font-Names="Verdana"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Calibri" NavigateUrl="~/WebFormTitleNew.aspx">Inserir Novo Livro</asp:HyperLink>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" PageSize="5" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Verdana" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="title_id" HeaderText="Código" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="Título" SortExpression="title" />
                    <asp:BoundField DataField="type" HeaderText="Tipo" SortExpression="type" />
                    <asp:BoundField DataField="pub_id" HeaderText="Editora" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" HeaderText="Preço" SortExpression="price" DataFormatString="{0:f2}" />
                    <asp:BoundField DataField="advance" HeaderText="Avanço" SortExpression="advance" />
                    <asp:BoundField DataField="royalty" HeaderText="Royalty" SortExpression="royalty" />
                    <asp:BoundField DataField="ytd_sales" HeaderText="ytd_sales" SortExpression="ytd_sales" />
                    <asp:BoundField DataField="notes" HeaderText="Descrição" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" HeaderText="Data da Publicação" SortExpression="pubdate" DataFormatString="{0:d}. " />
                    <asp:ButtonField ButtonType="Button" CommandName="Editar" Text="Editar" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Title" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPUBS.DAL.DALTitle" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
