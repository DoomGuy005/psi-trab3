<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsEdit.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormAuthorsEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" Font-Names="Calibri" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="au_id" HeaderText="ID" SortExpression="au_id" />
                    <asp:BoundField DataField="au_name" HeaderText="Nome" SortExpression="au_name" />
                    <asp:BoundField DataField="au_fname" HeaderText="Sobrenome" SortExpression="au_fname" />
                    <asp:BoundField DataField="phone" HeaderText="Fone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Endereço" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="CEP" SortExpression="zip" />
                    <asp:CheckBoxField DataField="contract" HeaderText="Contratado" SortExpression="contract" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="WebAppCRUDPUBS.DAL.DALAuthors" UpdateMethod="Update">
                <SelectParameters>
                    <asp:SessionParameter Name="au_id" SessionField="au_id" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
