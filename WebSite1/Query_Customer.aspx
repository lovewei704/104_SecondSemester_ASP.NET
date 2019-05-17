<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Query_Customer.aspx.cs" Inherits="Query_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <style>
    </style>
    <br />
    <div class="">
      <asp:GridView ID="CustomerGrid" runat="server" BackColor="white" OnRowCommand="CustomerGrid_RowCommand"
                          BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                          AutoGenerateColumns="False" Width="100%" CellSpacing="5" AllowPaging="true" PagerSettings-Mode="Numeric" PageSize="10"
                          CaptionAlign="Top" ForeColor="Black" GridLines="Vertical" HeaderStyle-Font-Bold='false'>

  <Columns>
    
                     
	 <asp:TemplateField HeaderText="客戶代碼"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
           <HeaderStyle Font-Bold="False" />
           <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
           <ItemTemplate>
               <asp:LinkButton ID="CustomerId"  runat="server" CommandName="goDetail" CommandArgument='<%# Eval("CustomerID") %>'><%# Eval("CustomerID") %></asp:LinkButton>
             
           </ItemTemplate>
       </asp:TemplateField>
	 <asp:TemplateField HeaderText="公司名稱"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                
                   <asp:LinkButton ID="CustomerName"  runat="server" CommandName="goDetail" CommandArgument='<%# Eval("CustomerID") %>' ><%# Eval("CompanyName") %></asp:LinkButton>
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