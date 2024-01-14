<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Certificates.aspx.cs" Inherits="CvEntitiyProject.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 30px">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Organizasyon</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("NAME")%></td>
                    <td><%#Eval("ORGANİZATİON")%></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="NewCertifices.aspx" class="btn btn-primary" style="margin-left: 20px">Yeni Sertifika Ekle</a>
</asp:Content>
