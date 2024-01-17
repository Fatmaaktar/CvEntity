<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CvEntitiyProject.Default" %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>CV_Site</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- Font Awesome CSS dosyasını ekleyin -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" crossorigin="anonymous" />

    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <%--<img src="" alt="news image" class="img-fluid navimg">--%>
            <img style="width: 200px; height: 150px; border-radius:%50;" src="/web/images/anasayfa.jpg" />
            <h1 class="top_hd mt-2"><a href="index.html">Fatma Aktar</a></h1>
            <p class="top_hdp mt-2">Bilgisayar Programcısı/ Yazılım Geliştirici</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="mt-sm-3"><a href="#home" class="scroll">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#projects" class="scroll">Projelerim</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Eğitim Hayatım</a></li>
                        <li class="mt-sm-3"><a href="#certificate" class="scroll">Sertifikalarım</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yeteneklerim</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Deneyimlerim</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>Cv yetenek sitesi
                    </h3>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("INFORMATIONS") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>
                </div>
            </div>
        </div>
        <!-- news -->
        <div class="news" id="projects">
            <h3 class="w3_head mb-4 text-left">Projelerim</h3>
            <br />
            <div class="row news-grids-left mt-5">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-5 news_top">
                            <a href='<%# Eval("ADDRESS") %>''>
                                <image style="width:200px; height:150px;" src='<%# Eval("IMAGE") %>'></image>
                            </a>
                        </div>
                        <div class="col-lg-7 news_top1">
                            <p class="mt-3"><%# Eval("NOTE") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Eğitim Hayatım</h2>
            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%# Eval("EDUCATION") %>
                        <br>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!--certifices-->
        <section class="services" id="certificate">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Sertifikalarım</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater5" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-book"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%# Eval("NAME") %><br />
                                        </h6>
                                        <h6><%# Eval("ORGANIZATION") %></h6>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
            </div>
        </section>
        <!-- services -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Yeteneklerim</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%# Eval("SKILS") %></h6>

                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
            </div>
        </section>
        <!-- //services -->
        <!-- news -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Deneyimlerim</h3>
            <p class="iner mt-md-5 text-left">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%# Eval("JOB") %>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </div>
        <!-- //news -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">İletişim</h3>
            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Konu"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajınız..." TextMode="MultiLine" Height="30"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Gönder" OnClick="Button1_Click" />
                    <br />
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <a href='<%# Eval("LINK") %>'>
                            <i style="width: 50px; height: 50px;" class="<%# Eval("ICON")%>"></i>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </section>
        <!-- //contact -->
    </div>

</body>
</html>
