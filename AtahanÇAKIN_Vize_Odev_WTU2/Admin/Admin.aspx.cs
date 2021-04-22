using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace AtahanÇAKIN_Vize_Odev_WTU2
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = 1234 ; persistsecurityinfo = True; database =market; SslMode = none";
            MySqlConnection con = new MySqlConnection(mycon);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into alicilar (alicilarad,alicilarsifre,alicilaradres) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = 1234 ; persistsecurityinfo = True; database =market; SslMode = none";
            MySqlConnection con = new MySqlConnection(mycon);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into urunler (urunlerad,urunlerfiyat) values('" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}