<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        table{
            width:100%;
            border-width:1px;
            border-style:solid;
            border-color:green;
            border-radius: 10px / 5px;
            background-color:#eeeeee;
        }
        input{width:100%;}
    </style>
    <br>
    <table border="1">
        <tr>
            <td rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ProductID:<br>ProductName:</td>
            <td rowspan="2">
                <asp:TextBox ID="idTextbox" runat="server"></asp:TextBox> <br />
                <asp:TextBox ID="nameTextbox" runat="server"></asp:TextBox> <br />
            </td>
            <td>Supplier</td>
            <td>
                <asp:DropDownList ID="SupplierDropDownList" runat="server" DataTextField="CompanyName" DataValueField="SupplierID"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Category</td>
            <td>
                <asp:DropDownList ID="CategoryDropDownList" runat="server" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
            </td>
        </tr>
            <tr>
            <td colspan="3">
                <asp:FileUpload ID="FileUpload" runat="server" /><hr />
                圖片名稱 : <asp:Label ID="PictureName" runat="server" Text=""></asp:Label><hr />
                <asp:Button ID="Upload" runat="server" Text="上傳" OnClick="Upload_Click" />
            </td>
            <td colspan="3" rowspan="2">
                <asp:Image ID="ImageBox" Width="300" ImageUrl="~/img/defaultcar.jpg" runat="server" /> 
            </td>
        </tr>
        </tr>
    </table>

    
    <asp:Button ID="insertButton" runat="server" Text="新增" OnClick="insertButton_Click" />
    <asp:Button ID="UpdateBatch" runat="server" Text="批次更新" OnClick="UpdateBatch_Click" /> 

    <div>
    <asp:GridView ID="GridView" runat="server" BackColor="white"
        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
        AutoGenerateColumns="False" Width="100%" CellSpacing="5" AllowPaging="true" PagerSettings-Mode="Numeric" PageSize="10"
        CaptionAlign="Top" ForeColor="Black" GridLines="Vertical" HeaderStyle-Font-Bold='false'>

        <Columns>
            <asp:TemplateField HeaderText="修改" ItemStyle-Width="15%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" BackColor="white" />
                <ItemTemplate>
                    <asp:RadioButton ID="Flag_Del" GroupName="op" runat="server" Text="刪除" />
                    <asp:RadioButton ID="Flag_Update" GroupName="op" runat="server" Text="修改" Checked="true" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="產品代碼" ItemStyle-Width="5%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:Label ID="ProductIdLabel" Text='<%# Eval("ProductID") %>' runat="server" Visible="false" />
                    <asp:TextBox ID="ProductIdTB" Text='<%# Eval("ProductID") %>' runat="server" CssClass="fulltext" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="產品名稱" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:TextBox ID="ProductNameTB" Text='<%# Eval("ProductName") %>' runat="server" CssClass="fulltext" />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="供應商" ItemStyle-Width="5%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:DropDownList ID="SupplierList" runat="server" DataSource="<%# SupplierSet %>"
                        SelectedIndex='<%# mydb.GetTableRowIndex(Eval("SupplierID").ToString().Trim(), SupplierSet) %>' DataTextField="CompanyName" DataValueField="SupplierID">
                    </asp:DropDownList>
                    <asp:TextBox ID="SupplierID" Text='<%# Eval("SupplierID") %>' runat="server" CssClass="fulltext" Visible="false" />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="類別" ItemStyle-Width="5%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:DropDownList ID="CategoryList" runat="server" DataSource="<%# CategorySet %>"
                        SelectedIndex='<%# mydb.GetTableRowIndex(Eval("CategoryID").ToString().Trim(), CategorySet) %>' DataTextField="CategoryName" DataValueField="CategoryID">
                    </asp:DropDownList>
                    <asp:TextBox ID="CategoryID" Text='<%# Eval("CategoryID") %>' runat="server" CssClass="fulltext" Visible="false" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="照片" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                   <asp:ImageButton ID="PictureImg" ImageUrl='<%# "./img/" + Eval("Picture").ToString().Trim() %>' Width="100%" runat="server" CssClass="fulltext" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:TextBox ID="PictureTB" Text='<%# Eval("Picture") %>' runat="server" CssClass="fulltext" />
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

