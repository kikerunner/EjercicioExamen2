<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Ejersisio2.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" SortExpression="IdCliente" />
                    <asp:BoundField DataField="NomCliente" HeaderText="NomCliente" SortExpression="NomCliente" />
                    <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto" />
                    <asp:TemplateField HeaderText="Ventas">
                        <ItemTemplate>
                            <asp:GridView ID="GridView3" runat="server" DataSource='<%# Eval("Ventas") %>'>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:GridView ID="GridView2" runat="server" DataSource='<%# Eval("Ventas") %>'>
                    </asp:GridView>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getClientes" TypeName="Ejersisio2.Repo"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
