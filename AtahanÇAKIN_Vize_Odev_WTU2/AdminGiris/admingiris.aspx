<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="AtahanÇAKIN_Vize_Odev_WTU2.admingiris" %>

<!DOCTYPE html>

<html>
<head runat="server">
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="sablon">
<div class="banner"></div>
<div class="menu">
<ul>
<li><a href="../Index/index.aspx">Anasayfa</a></li>
<li><a href="../Hakkımızda/hakkımızda.aspx">Hakkımızda</a></li>
<li><a href="../Market/ürünler.aspx">Market</a></li>
<li><a href="../Iletisim/iletişim.aspx">İletişim</a></li>
<li><a href="admingiris.aspx">AdminGiriş</a></li>
</ul>
</div>
    <center>
    <div class="orta6">

        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Admin Giriş Ekranı"></asp:Label>

        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Kullanici Adı"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Sifre"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        <br />

        <br />
        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:marketConnectionString2 %>" ProviderName="<%$ ConnectionStrings:marketConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM admin"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Kullanici Adı ve Şifre: admin"></asp:Label>

        </div>
        </center>
</div>
</form>
</body>
</html>