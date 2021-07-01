using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            nguoidung nd = new nguoidung();
            if (txtpass.Text != txta.Text)
            {
                lb.Text = "Mật khẩu không khớp!";
            }
            else
            {
                nd.taikhoan = txtten.Text;
                nd.matkhau = txtpass.Text;
                nd.vaitro = "user";
                db.nguoidung.Add(nd);
                db.SaveChanges();
                lb.Text = "Bạn đã đăng ký thành công!";
            }
        }
    }
}