<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ExpriencesAdd.aspx.cs" Inherits="CvEntitiyProject.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h4>Deneyim Ekle</h4>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Kişi Bilgisi"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Kurum"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Deneyim"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-success" OnClick="Button1_Click"/>
</asp:Content>
