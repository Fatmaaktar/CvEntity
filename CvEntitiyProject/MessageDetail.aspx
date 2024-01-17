<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetail.aspx.cs" Inherits="CvEntitiyProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>MESAJ DETAYLARI</h4>
    <asp:TextBox ID="TxtNameSurname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="TxtTopic" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
     <br />
    <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control" Height="100" Enabled="false"></asp:TextBox>
   
</asp:Content>
