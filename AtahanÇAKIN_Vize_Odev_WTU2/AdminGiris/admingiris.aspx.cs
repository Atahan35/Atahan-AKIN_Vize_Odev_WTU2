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
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string myconn = "server =localhost; Uid=root; password = 1234 ; persistsecurityinfo = True; database =market; SslMode = none";
            MySqlConnection conn = new MySqlConnection(myconn);
            conn.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("select * from admin where adminnick=@isim and adminsifre=@sifre", conn);
            da.SelectCommand.Parameters.Add("@isim", MySqlDbType.VarChar, 11);
            da.SelectCommand.Parameters.Add("@sifre", MySqlDbType.VarChar, 8);
            da.SelectCommand.Parameters["@isim"].Value = TextBox1.Text;
            da.SelectCommand.Parameters["@sifre"].Value = TextBox2.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                Label3.Text = "Hatalı Giriş, Lütfen Tekrar Deneyiniz";
            }
        }
    }
}