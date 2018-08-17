<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormPublishers.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormPublishers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cadastro de Editoras" Font-Names="Calibri"></asp:Label>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" Font-Names="Calibri" ForeColor="#333333" GridLines="None" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pub_id" HeaderText="Código" SortExpression="pub_id" />
                    <asp:BoundField DataField="pub_name" HeaderText="Nome da Editora" SortExpression="pub_name" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
                    <asp:BoundField DataField="country" HeaderText="País" SortExpression="country" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Publishers" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPUBS.DAL.DALPublishers" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
