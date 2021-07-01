using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string a = "admin" ;
            string b = "user";
            banhang2Entities db = new banhang2Entities();
            string user = txtUser.Text;
            string pass = txtPass.Text;
            int so = db.nguoidung.Count(x => x.taikhoan == user && x.matkhau == pass && x.vaitro == a);
            int s = db.nguoidung.Count(x => x.taikhoan == user && x.matkhau == pass && x.vaitro ==b);
            if (so == 1)
            {
                Session["user1"] = user;
                Response.Redirect("Trangchu.aspx");
            }
            else
            {
                lbEror.Text = "Tài khoản hoặc mật khẩu sai!";
            }
            if (s == 1)
            {
                Session["user"] = user;
                Response.Redirect("../Index1.aspx");
            }
            else
            {
                lbEror.Text = "Tài khoản hoặc mật khẩu sai!";
            }
        }
    }
}