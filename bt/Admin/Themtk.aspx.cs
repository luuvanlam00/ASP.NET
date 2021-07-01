using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Themtk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {


            banhang2Entities db = new banhang2Entities();
            nguoidung obj = new nguoidung();
            obj.taikhoan = txtTen.Text;
            obj.matkhau = txtpass.Text;
            obj.vaitro = cmbvai.SelectedValue.ToString();
            db.nguoidung.Add(obj);
            db.SaveChanges();
            Response.Redirect("Taikhoan.aspx");
        }

    }
}