<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegionList.ascx.cs" Inherits="RegionList" %>

<asp:DropDownList ID="RegionDropDownList" runat="server" DataTextField="RegionDescription" DataValueField="RegionID" OnSelectedIndexChanged="RegionDropDownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>