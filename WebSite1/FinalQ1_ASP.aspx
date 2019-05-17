<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FinalQ1_ASP.aspx.cs" Inherits="FinalQ1_ASP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <table border="1">
        <tr>
            <td colspan="4" style="border: thin groove #000000" id="">
                 <asp:TextBox ID="OutputTB" runat="server" Height="115px" Width="264px"></asp:TextBox>
            </td></tr>
        <tr>
            <td style="width: 62px; height: 28px"><asp:Button ID="Button_7" runat="server" Text="7" Width="64px" Height="36px" OnClick="Button_7_Click" /></td>
            <td style="height: 28px"><asp:Button ID="Button_8" runat="server" Text="8" Height="36px" OnClick="Button_8_Click" Width="64px" /></td>
            <td style="height: 28px"><asp:Button ID="Button_9" runat="server" Text="9" Height="36px" OnClick="Button_9_Click" Width="64px" /></td>
            <td style="height: 28px"><asp:Button ID="Button_Plus" runat="server" Text="+" Height="36px" OnClick="Button_Plus_Click" Width="64px" /></td>
        </tr>
        <tr>
            <td style="width:62px; height: 26px;"><asp:Button ID="Button_4" runat="server" Text="4" Width="64px" Height="36px" OnClick="Button_4_Click" /></td>
            <td style="height: 26px"><asp:Button ID="Button_5" runat="server" Text="5" Width="64px" Height="36px" OnClick="Button_5_Click"  /></td>
            <td style="height: 26px"><asp:Button ID="Button_6" runat="server" Text="6" Width="64px" Height="36px" OnClick="Button_6_Click"  /></td>
            <td style="height: 26px"><asp:Button ID="Button_Minus" runat="server" Text="-" Height="36px" OnClick="Button_Minus_Click" Width="64px" /></td>
        </tr>
        <tr>
            <td style="width: 62px; height: 30px;"><asp:Button ID="Button_1" runat="server" Text="1" Height="36px" OnClick="Button_1_Click" Width="64px" /></td>
            <td style="height: 30px"><asp:Button ID="Button_2" runat="server" Text="2" Height="36px" OnClick="Button_2_Click" Width="64px" /></td>
            <td style="height: 30px"><asp:Button ID="Button_3" runat="server" Text="3" Height="36px" OnClick="Button_3_Click" Width="64px" /></td>
            <td style="height: 30px"><asp:Button ID="Button_Times" runat="server" Text="x" Height="36px" OnClick="Button_Times_Click" Width="64px" /></td>
        </tr>
        <tr>
            <td style="width: 62px; height: 31px;"><asp:Button ID="Button_0" runat="server" Text="0" Height="36px" OnClick="Button_0_Click" Width="64px" /></td>
            <td style="height: 31px"><asp:Button ID="Button_Dot" runat="server" Text="." Height="36px" OnClick="Button_Dot_Click" Width="64px" /></td>
            <td style="height: 31px"><asp:Button ID="Button_Equal" runat="server" Text="=" Height="36px" OnClick="Button_Equal_Click" Width="64px" /></td>
            <td style="height: 31px"><asp:Button ID="Button_Divide" runat="server" Text="/" Height="36px" OnClick="Button_Divide_Click" Width="64px" /></td>
        </tr>
    </table>

</asp:Content>

