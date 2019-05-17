<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Detail_Customer.aspx.cs" Inherits="Detail_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <table style="width:100%;">
        <tr>
            <td style="height: 22px">Customer ID</td>
            <td style="height: 22px">
                <asp:Label ID="CustomerID" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 22px" rowspan="3">
                 <asp:ImageButton ID="PictureImg" style="width:200px; height:220px" ImageUrl="http://i.telegraph.co.uk/multimedia/archive/03029/Becks1_5_3029072b.jpg" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td>
                <asp:textbox ID="CompanyName" runat="server" Text="Label" />

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Picture</td>
            <td>
                  <asp:FileUpload ID="FileUpload1" runat="server" /><hr />
                Picture Name: <asp:Label ID="PictureName" runat="server" Text="Label"></asp:Label><hr />
                 <asp:Button ID="UploadImg" runat="server" Text="上傳"  />
            </td>
            <td>
                <asp:Button ID="UpdateCustomer" runat="server" Text="Update" OnClick="UpdateCustomer_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

