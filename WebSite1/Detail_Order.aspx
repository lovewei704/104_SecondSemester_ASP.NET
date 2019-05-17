<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Detail_Order.aspx.cs" Inherits="Detail_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table style="width:100%;">
        <tr>
            <td style="width: 105px">訂單編號</td>
            <td><asp:Label ID="OrderID" runat="server" Height="20px" Width="160px"></asp:Label></td>

            <td style="height: 22px; width: 35px;" rowspan="7">
                 <asp:ImageButton ID="PictureImg" style="width:200px; height:220px" ImageUrl="http://i.telegraph.co.uk/multimedia/archive/03029/Becks1_5_3029072b.jpg" runat="server" />
            </td>
        </tr>
        <tr>
            <td>客戶</td>
            <td><asp:DropDownList ID="CustomerIDList" runat="server" DataTextField="CompanyName" DataValueField="CustomerID" AutoPostBack="true" Height="20px" Width="166px"></asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 105px">產品</td>
            <td><asp:DropDownList ID="ProductIDList" runat="server" DataTextField="ProductName" DataValueField="ProductID" Height="20px" Width="165px"></asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 105px">單價</td>
            <td><asp:Label ID="UnitPrice" runat="server" Text="" Width="154px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 105px">數量</td>
            <td><asp:TextBox ID="Qty" runat="server" Height="20px" Width="154px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 105px">金額</td>
            <td><asp:Label ID="Amount" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 35px">
                <asp:Button ID="UpdateCustomer" runat="server" Text="更新" OnClick="UpdateCustomer_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

