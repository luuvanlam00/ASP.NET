using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suatk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }

        }
        public void getData()
        {
            string taikhoan=Request.QueryString["taikhoan"];
            banhang2Entities db = new banhang2Entities();
            nguoidung obj = db.nguoidung.FirstOrDefault(x => x.taikhoan == taikhoan);
            if (obj == null)
            {
                Response.Redirect("Taikhoan.aspx");

            }
            else
            {
                txtTen.Text = obj.taikhoan;
                txtpass.Text = obj.matkhau;
                cmbvai.SelectedValue = obj.vaitro.ToString();
                txtTen.ReadOnly = true;
            }


        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            string taikhoan = Request.QueryString["taikhoan"];
            banhang2Entities db = new banhang2Entities();
            nguoidung obj = db.nguoidung.FirstOrDefault(x => x.taikhoan == taikhoan);
            obj.taikhoan = txtTen.Text;
            obj.matkhau = txtpass.Text;
            obj.vaitro = cmbvai.SelectedValue.ToString();
            db.SaveChanges();
            Response.Redirect("Taikhoan.aspx");
        }
    }
}