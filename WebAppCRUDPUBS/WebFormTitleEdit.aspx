<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitleEdit.aspx.cs" Inherits="WebAppCRUDPUBS.WebFormTitleEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Edição de Livros"></asp:Label>
            <hr/>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" Font-Names="Verdana" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="title_id" HeaderText="Código" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="Título" SortExpression="title" />
                    <asp:BoundField DataField="type" HeaderText="Tipo" SortExpression="type" />
                    <asp:BoundField DataField="pub_id" HeaderText="Código de Publicação" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" DataFormatString="{0:f2}" HeaderText="Preço" SortExpression="price" />
                    <asp:BoundField DataField="advance" HeaderText="Avanço" SortExpression="advance" />
                    <asp:BoundField DataField="royalty" HeaderText="Royalty" SortExpression="royalty" />
                    <asp:BoundField DataField="ytd_sales" HeaderText="ytd_sales" SortExpression="ytd_sales" />
                    <asp:BoundField DataField="notes" HeaderText="Descrição" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" DataFormatString="{0:d}" HeaderText="Data de Publicação" SortExpression="pubdate" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="Novo"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="" Text="Excluir"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPUBS.Modelo.Title" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="WebAppCRUDPUBS.DAL.DALTitle" UpdateMethod="Update" OnDeleted="ObjectDataSource1_Deleted" OnSelecting="ObjectDataSource1_Selecting">
                <SelectParameters>
                    <asp:SessionParameter Name="title_id" SessionField="title_id" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            Função ConfirmaExclusao
<script language=javascript>
    function ConfirmaExclusao() {
        return confirm('Deseja realmente excluir este registro?');
    }
</script>

        </div>
    </form>
</body>
</html>
