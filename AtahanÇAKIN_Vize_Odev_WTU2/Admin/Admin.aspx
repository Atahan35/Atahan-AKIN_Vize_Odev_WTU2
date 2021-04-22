<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AtahanÇAKIN_Vize_Odev_WTU2.Admin" %>

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
<li><a href="../AdminGiris/admingiris.aspx">AdminGiriş</a></li>
</ul>
</div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:marketConnectionString %>" ProviderName="<%$ ConnectionStrings:marketConnectionString.ProviderName %>" SelectCommand="SELECT * FROM alicilar"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="server=localhost;user id=root;password=1234;database=market" ProviderName="MySql.Data.MySqlClient" SelectCommand="SELECT * FROM urunler"></asp:SqlDataSource>
    <center>
<div class="orta6">
    <asp:Label ID="Label1" runat="server" Text="Kullanici Ekleme"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Ad"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Şifre"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Adres"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Urun Ekleme"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Ürün Adı"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Fiyat"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ekle" />
</center>
</div>
</div>
</form>
</body>
</html>
