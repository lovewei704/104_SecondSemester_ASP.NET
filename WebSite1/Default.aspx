<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        div{
            color:darkblue
        }
    </style>

    <asp:Panel ID="Panel_Main" runat="server" Visible="false">
        <div class="jumbotron">
            <h1>購車系統.NET</h1>
            <p class="lead">購車系統.NET 是一個免費的購車網站，盡情在此花錢吧！</p>
            <img src="img/defaultcar.jpg" />
            <p><a href="~/Order" class="btn btn-primary btn-large">購車去 &raquo;</a></p>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel_Login" runat="server" Visible="true">

        <asp:Label ID="ShowMessage" runat="server" Text="" Visible="false" />

        <table style="text-align:center">
            <tr><td colspan="2">登入系統</td></tr>
            <tr>
                <td>帳號：</td>
                <td><asp:TextBox ID="AmountTB" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>密碼：</td>
                <td><asp:TextBox ID="PasswordTB" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td rowspan="2">驗證碼：</td>
                <td><asp:TextBox ID="verTB" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
                    <img src="img/<% =checkNum[0] %>.jpg" style="width:30px;height:60px;" />
                    <img src="img/<% =checkNum[1] %>.jpg" style="width:30px;height:60px;" />
                    <img src="img/<% =checkNum[2] %>.jpg" style="width:30px;height:60px;" />
                    <img src="img/<% =checkNum[3] %>.jpg" style="width:30px;height:60px;" />

            <tr><td colspan="2"><asp:Button ID="loginBTN" runat="server" Text="登入" OnClick="loginBTN_Click" /></td></tr>
            
        </table>
    </asp:Panel>


</asp:Content>
