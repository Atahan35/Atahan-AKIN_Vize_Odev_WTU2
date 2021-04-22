<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletişim.aspx.cs" Inherits="AtahanÇAKIN_Vize_Odev_WTU2.WebForm2" %>



    
<html>
<head runat="server">
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #TextArea1 {
            height: 100px;
        }
        #TextArea2 {
            height: 100px;
        }
        #Button1 {
            width: 226px;
            height: 40px;
        }
    </style>
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
<li><a href="iletişim.aspx">İletişim</a></li>
<li><a href="../AdminGiris/admingiris.aspx">AdminGiriş</a></li>
</ul>
</div>
<div class="form">
    <asp:Label ID="Label1" runat="server" Text="Adı:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
</br>
    <asp:Label ID="Label2" runat="server" Text="Soyadı:"></asp:Label>
    <br>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
</br>
    <asp:Label ID="Label3" runat="server" Text="Adresi:"></asp:Label>
    <br>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Telefon Adresi:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br>
&nbsp;</br>
</div>
<div class="form">
    <asp:CheckBox ID="Öneri" runat="server" />
    <br>
    <asp:CheckBox ID="Şikayet" runat="server" />
    <br>
    <asp:CheckBox ID="İstek" runat="server" />
    <br>
</div>
<div class="form">
    <asp:Label ID="Label5" runat="server" Text="Konu:"></asp:Label>
    <br />
    <br>
&nbsp;<textarea id="TextArea1" cols="20" name="S1"></textarea></br>
</div>
<div class="form">
    <asp:Label ID="Label6" runat="server" Text="Detay:"></asp:Label>
    <br />
    <br>
&nbsp;<textarea id="TextArea2" cols="20" name="S2"></textarea><br />
    <br />
    <input id="Button1" type="button" value="Yolla" /><br>
</br>
</div>
<div class="form">

    <asp:Label ID="Label7" runat="server" Text="İletişim:"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Atahan ÇAKIN"></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Korutürk Mah. Kamelya Sk. No:6/7"></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Balçova/İZMİR"></asp:Label>

</div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div style="height: 318px; width: 591px; margin-left: 150px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:marketVeri %>" ProviderName="<%$ ConnectionStrings:marketVeri.ProviderName %>" SelectCommand="SELECT * FROM alicilar"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idalicilar" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="592px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="idalicilar" HeaderText="Müşteri Sırası" ReadOnly="True" SortExpression="idalicilar" />
                <asp:BoundField DataField="alicilarad" HeaderText="Müşteri" SortExpression="alicilarad" />
                <asp:BoundField DataField="alicilarsifre" HeaderText="Müşteri Şifresi" SortExpression="alicilarsifre" />
                <asp:BoundField DataField="alicilaradres" HeaderText="Müşteri Adresi" SortExpression="alicilaradres" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </div>
    <br />
</div>
</form>
</body>
</html>
