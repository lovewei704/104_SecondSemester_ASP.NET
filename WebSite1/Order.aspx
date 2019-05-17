<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <asp:Table runat="server"
        Font-Size="X-Large"
        Width="550"
        Font-Names="Palatino"
        BackColor="#666699"
        BorderColor="DarkRed"
        BorderWidth="2"
        ForeColor="Snow"
        CellPadding="5"
        CellSpacing="5">

        <asp:TableHeaderRow ID="Table" runat="server">
            <asp:TableHeaderCell>新增訂單</asp:TableHeaderCell>
        </asp:TableHeaderRow>

        <asp:TableRow runat="server">
            <asp:TableCell>訂單編號</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="OrderID" Text='<%# Eval("OrderID") %>' runat="server" CssClass="fulltext" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell>客戶</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="CustomerList" runat="server" DataTextField="CompanyName" DataValueField="CustomerID" AutoPostBack="True"></asp:DropDownList>
                <asp:TextBox ID="CustomerID" Text='<%# Eval("CustomerID") %>' runat="server" CssClass="fulltext" Visible="false" />
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow ID="TableRow3" runat="server">
            <asp:TableCell>產品</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ProductList" runat="server" DataTextField="ProductName" DataValueField="ProductID" AutoPostBack="True" OnSelectedIndexChanged="ProductList_selectedIndexChanged">
                </asp:DropDownList>
                <asp:TextBox ID="ProductID" Text='<%# Eval("ProductID") %>' runat="server" CssClass="fulltext" Visible="false" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="TableRow2" runat="server">
            <asp:TableCell>數量</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Qty" Text='<%# Eval("Qty") %>' runat="server" CssClass="fulltext" AutoPostBack="true" OnTextChanged="Qty_TextChanged" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="TableRow4" runat="server">
            <asp:TableCell>單價</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="UnitPrice" Text='<%# Eval("UnitPrice") %>' runat="server" CssClass="fulltext" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow ID="TableRow5" runat="server">
            <asp:TableCell>金額</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Amount" Text='<%# Eval("Amount") %>' runat="server" CssClass="fulltext" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell>
                <asp:Button ID="insertButton" runat="server" Text="下單" OnClick="Button_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>

