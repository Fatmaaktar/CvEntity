<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Expriences.aspx.cs" Inherits="CvEntitiyProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table class="table table-bordered" style="margin-left: 20px; margin-right: 30px">
        <tr>
            <th>ID</th>
            <th>BİLGİLER</th>
            <th>EĞİTİM</th>
            <th>DENEYİM</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("INFORMATIONS")%></td>
                    <td><%#Eval("EDUCATİON")%></td>
                    <td><%#Eval("JOB")%></td>
                      <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ExprienceDelete.aspx?ID=" + Eval("ID")%>'
                            CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
       </table>
    <a href="ExpriencesAdd.aspx" class="btn btn-primary" style="margin-left: 20px">Yeni Deneyim Ekle</a>
</asp:Content>
