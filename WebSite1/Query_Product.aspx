<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Query_Product.aspx.cs" Inherits="Query_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView" runat="server" BackColor="white" OnRowCommand="GridView_RowCommand"
        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
        AutoGenerateColumns="False" Width="100%" CellSpacing="5" AllowPaging="true" PagerSettings-Mode="Numeric" PageSize="10"
        CaptionAlign="Top" ForeColor="Black" GridLines="Vertical" HeaderStyle-Font-Bold='false'>

        <Columns>

            <asp:TemplateField HeaderText="產品代碼" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="ProductID" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("ProductID") %>'><%# Eval("ProductID") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="產品名稱" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:LinkButton ID="ProductName" runat="server" CommandName="goDetail" CommandArgument='<%# Eval("ProductID") %>' ><%# Eval("ProductName") %></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="照片" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:ImageButton ID="PictureImg" ImageUrl='<%# "./img/" + Eval("picture").ToString().Trim() %>' runat="server"  CommandName="goDetail" CommandArgument='<%# Eval("ProductID") %>' />
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
</asp:Content>

