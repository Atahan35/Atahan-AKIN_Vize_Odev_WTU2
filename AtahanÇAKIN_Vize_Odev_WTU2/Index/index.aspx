<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AtahanÇAKIN_Vize_Odev_WTU2.WebForm3" %>


<html>
<head runat="server">
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form2" runat="server">
<div class="sablon">
<div class="banner"></div>
<div class="menu">
<ul>
<li><a href="index.aspx">Anasayfa</a></li>
<li><a href="../Hakkımızda/hakkımızda.aspx">Hakkımızda</a></li>
<li><a href="../Market/ürünler.aspx">Market</a></li>
<li><a href="../Iletisim/iletişim.aspx">İletişim</a></li>
<li><a href="../AdminGiris/admingiris.aspx">AdminGiriş</a></li>
</ul>
</div>
<div class="orta1">
<h1>Her Zaman En Kalitelisini Biz Öneririz</h1>
</div>
<div class="orta2">
<img src="televizyon.jpg" width="300px" height="300px">
</div>
<div class="orta3">
<img src="index1.jpg" width="300px" height="300px">
</div>
<div class="orta4">
<img src="monitör.jpg" width="300px" height="300px">
</div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:marketVeri %>" ProviderName="<%$ ConnectionStrings:marketVeri.ProviderName %>" SelectCommand="SELECT * FROM urunler"></asp:SqlDataSource>
    <br />
    <center>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="idurunler" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="228px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="idurunler" HeaderText="Ürün ID" ReadOnly="True" SortExpression="idurunler" />
            <asp:BoundField DataField="urunlerad" HeaderText="Ürün Adı" SortExpression="urunlerad" />
            <asp:BoundField DataField="urunlerfiyat" HeaderText="Ürün Fiyatı" SortExpression="urunlerfiyat" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    </center>
</div>
</form>
</body>
</html>
