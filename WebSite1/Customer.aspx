<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<%@ Register Src="~/RegionList.ascx" TagPrefix="uc1" TagName="RegionList" %>


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
    <br />
    <table border="1">
        <tr>
            <td>客戶代碼 : </td>
            <td><asp:TextBox ID="idTextbox" runat="server"></asp:TextBox></td>
            <td>客戶名稱 :</td>
            <td><asp:TextBox ID="nameTextbox" runat="server"></asp:TextBox></td>
            <td>區域 : </td>
            <td>
                <uc1:RegionList runat="server" id="RegionDropDownList" OnClickList="getSelect" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:FileUpload ID="FileUpload" runat="server" /><hr />
                圖片名稱 : <asp:Label ID="PictureName" runat="server" Text=""></asp:Label><hr />
                <asp:Button ID="Upload" runat="server" Text="上傳" OnClick="Upload_Click" />
            </td>
            <td colspan="3" rowspan="3">
                <asp:Image ID="ImageBox" Width="300" ImageUrl="img/default.jpg" runat="server" /> 
            </td>
        </tr>
    </table>
       <br />

    <asp:Button ID="insertButton" runat="server" Text="新增" OnClick="insertButton_Click" />
    <asp:Button ID="UpdateBatch" runat="server" Text="批次更新" OnClick="UpdateBatch_Click" />    <br />

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

            <asp:TemplateField HeaderText="客戶代碼" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:Label ID="CustomerIdLabel" Text='<%# Eval("CustomerID") %>' runat="server" Visible="false" />
                    <asp:TextBox ID="CustomerIdTB" Text='<%# Eval("CustomerID") %>' runat="server" CssClass="fulltext" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="公司名稱" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:TextBox ID="CompanyNameTB" Text='<%# Eval("CompanyName") %>' runat="server" CssClass="fulltext" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="區域" ItemStyle-Width="5%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:DropDownList ID="RegionList" runat="server" DataSource="<%# RegionSet %>"
                        SelectedIndex='<%# mydb.GetTableRowIndex(Eval("RegionID").ToString().Trim(), RegionSet) %>' DataTextField="RegionDescription" DataValueField="RegionID">
                    </asp:DropDownList>
                    <asp:TextBox ID="RegionID" Text='<%# Eval("RegionID") %>' runat="server" CssClass="fulltext" Visible="false" />
                </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="照片" ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
                <HeaderStyle Font-Bold="False" />
                <ItemStyle HorizontalAlign='Center' Width="300" VerticalAlign="Top" />
                <ItemTemplate>
                    <asp:Image ID="PictureImg" ImageUrl='<%# "./img/" + Eval("Picture").ToString().Trim() %>' Width="100%" runat="server" CssClass="fulltext" />
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

</asp:Content>

