<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <style>
        input[type=submit] {
            border-width: 2px;
            border-style: solid;
            border-color: green;
            border-radius: 5px;
        }
        #aaa{
            width:100%;
            border: 1px;
            border-style: none;            
            padding: 30px;
            background-color: #eeeeee;
            border-radius:10px;
        }
        #bbb{
            border: 2px;
            border-style: none;            
            padding: 30px;
            background-color: #b4f6e6;
            border-radius:10px;
        }
        input{width:100%;}
    </style>
    <br>
    <div id="aaa">
    <table border="1">
        <tr>
            <td style="width: 65px">員工代碼</td>
            <td style="width: 230px">  <asp:TextBox ID="employeeID_TB" runat="server" Width="200px"></asp:TextBox>  </td>
            <td style="width: 65px">姓<br />名</td>
            <td style="width: 230px">  <asp:TextBox ID="firstName_TB" runat="server" Width="200px"></asp:TextBox>&nbsp;<asp:TextBox ID="lastName_TB" runat="server" Width="200px"></asp:TextBox></td>
            <td style="width: 65px">密碼</td>
            <td style="width: 230px">  <asp:TextBox ID="password_TB" runat="server" Width="200px" TextMode="Password"></asp:TextBox>  </td>
        </tr>
        <tr>
            <td style="width: 65px">性別</td>
            <td style="width: 230px">
                <asp:RadioButton ID="Mr_RB" groupname="sex" runat="server" Text="Mr." />
                <asp:RadioButton ID="Ms_RB" groupname="sex" runat="server" Text="Ms." />
                <asp:RadioButton ID="Dr_RB" groupname="sex" runat="server" Text="Dr." />
            </td>
            <td style="width: 65px">區域</td>
            <td style="width: 452px">
                <asp:DropDownList ID="RegionList" runat="server" DataTextField="RegionDescription" DataValueField="RegionID" Height="28px" Width="230px"></asp:DropDownList>
            </td>
            <td style="width: 65px">雇用日期</td>
            <td style="width: 230px">
                <asp:Calendar ID="hireDate_CALEN" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:FileUpload ID="FileUpload1" runat="server" /><hr />
                 <asp:Button ID="UploadImg" runat="server" Text="上傳"  />
            </td>
            <td colspan="2" style="text-align:center;">
                <asp:ImageButton ID="ImageButton1" ImageUrl="http://i.telegraph.co.uk/multimedia/archive/03029/Becks1_5_3029072b.jpg" runat="server" Width="435px" /><hr />
                圖片名稱：<asp:Label ID="PictureName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="6" align="middle">
                <asp:Button ID="Op_Insert" runat="server" Text="新  增" Width="101px" Height="44px" />
            </td>
        </tr>
    </table>
    </div>        
     
    <hr /><asp:Button ID="UpdateBatch" runat="server" Text="批次更新" /><hr />
    <div id="bbb">
    <asp:GridView ID="CustomerGrid" runat="server" BackColor="white"
                          BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                          AutoGenerateColumns="False" Width="100%" CellSpacing="5" AllowPaging="true" PagerSettings-Mode="Numeric" PageSize="10"
                          CaptionAlign="Top" ForeColor="Black" GridLines="Vertical" HeaderStyle-Font-Bold='false'>

  <Columns>
       <asp:TemplateField HeaderText="修改" ItemStyle-Width="15%" HeaderStyle-Font-Bold='false'>
           <HeaderStyle Font-Bold="False" />
           <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" BackColor="white" />
           <ItemTemplate>
                    <asp:RadioButton ID="Flag_Del" groupname="op" runat="server" Text="刪除" />
                    <asp:RadioButton ID="Flag_Update"  groupname="op"  runat="server" Text="修改" Checked="true" />
           </ItemTemplate>
       </asp:TemplateField>
                     
	 <asp:TemplateField HeaderText="員工代碼"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
           <HeaderStyle Font-Bold="False" />
           <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
           <ItemTemplate>
              <asp:label ID="employeeID_Old"  Text='<%# Eval("CustomerID") %>'  runat="server"  Visible="false" Enabled="False" />
              <asp:Textbox ID="employeeID"  Text='<%# Eval("CustomerID") %>'  runat="server"  CssClass="fulltext" Enabled="False" />
           </ItemTemplate>
       </asp:TemplateField>
	 <asp:TemplateField HeaderText="姓"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:Textbox ID="firstName"  Text='<%# Eval("CompanyName") %>'  runat="server"  CssClass="fulltext" />
            </ItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField HeaderText="名"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:Textbox ID="lastName"  Text='<%# Eval("CompanyName") %>'  runat="server"  CssClass="fulltext" />
            </ItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField HeaderText="密碼"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:Textbox ID="password"  Text='<%# Eval("CompanyName") %>'  runat="server"  CssClass="fulltext" />
            </ItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField HeaderText="雇用日期"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                <%--<asp:Textbox ID="password"  Text='<%# Eval("CompanyName") %>'  runat="server"  CssClass="fulltext" />--%>
            </ItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField HeaderText="性別"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                <asp:RadioButton ID="Mr_RB" groupname="sex" runat="server" Text="Mr." />
                <asp:RadioButton ID="Ms_RB" groupname="sex" runat="server" Text="Ms." />
                <asp:RadioButton ID="Dr_RB" groupname="sex" runat="server" Text="Dr." />
            </ItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField HeaderText="區域"  ItemStyle-Width="5%" HeaderStyle-Font-Bold='false'>
       <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:DropDownList ID="RegionList" runat="server" DataSource="<%# RegionSet %>"   
                          SelectedIndex='<%# mydb.GetTableRowIndex(Eval("RegionID").ToString().Trim(), RegionSet) %>' DataTextField="RegionDescription" DataValueField="RegionID"></asp:DropDownList>
                 <asp:Textbox ID="RegionID"  Text='<%# Eval("RegionID") %>'  runat="server"  CssClass="fulltext" Visible="false" />
            </ItemTemplate>
       </asp:TemplateField>
        <asp:TemplateField HeaderText="照片"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:ImageButton ID="ImageButton1" ImageUrl='<%# "./img/" + Eval("picture").ToString().Trim() %>'  style="width:100px; width:50px"  runat="server" />
            </ItemTemplate>
       </asp:TemplateField>
       <asp:TemplateField HeaderText="照片名稱"  ItemStyle-Width="20%" HeaderStyle-Font-Bold='false'>
       	<HeaderStyle Font-Bold="False" />
            <ItemStyle HorizontalAlign='Center' VerticalAlign="Top" />
            <ItemTemplate>
                 <asp:Textbox ID="Picture"  Text='<%# Eval("Picture") %>'  runat="server"  CssClass="fulltext" />
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

