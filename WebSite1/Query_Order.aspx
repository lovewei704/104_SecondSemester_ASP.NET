<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Query_Order.aspx.cs" Inherits="Query_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <br />
    <div class="myjumbotron">
    <asp:GridView ID="OrderGrid" runat="server" BackColor="white" OnRowCommand="GridView_RowCommand"
        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
        AutoGenerateColumns="False" Width="100%" CellSpacing="5" AllowPaging="true" PagerSettings-Mode="Numeric" PageSize="10"
        CaptionAlign="Top" ForeColor="Black" GridLines="Vertical" HeaderStyle-Font-Bold='false'>

        <Columns>

            <asp:TemplateField HeaderText="訂單編號" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="OrderID" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("OrderID") %>'><%# Eval("OrderID") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="客戶" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="CustomerID" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("OrderID") %>'><%# Eval("CustomerID") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="產品" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="ProductID" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("OrderID") %>'><%# Eval("ProductID") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="數量" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="Qty" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("OrderID") %>'><%# Eval("Qty") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="金額" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="Amount" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("OrderID") %>'><%# Eval("Amount") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#669999" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
        <RowStyle BackColor="#ffffff" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        </div>
</asp:Content>

