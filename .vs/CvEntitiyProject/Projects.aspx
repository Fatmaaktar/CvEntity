<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="CvEntitiyProject.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 30px">
        <tr>
            <th>ID</th>
            <th>IMAGE</th>
            <th>ADDRESS</th>
            <th>NOTE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("IMAGE")%></td>
                    <td><%#Eval("ADDRESS")%></td>
                    <td><%#Eval("NOTE")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ProjeDelete.aspx?ID=" + Eval("ID")%>'
                            CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="NewProje.aspx" class="btn btn-primary" style="margin-left: 20px">Yeni Proje Ekle</a>
</asp:Content>
