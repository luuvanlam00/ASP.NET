using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suadm : System.Web.UI.Page
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
            int maloai = Convert.ToInt32(Request.QueryString["maloai"]);
            banhang2Entities db = new banhang2Entities();
            loaisp obj = db.loaisp.FirstOrDefault(x => x.maloai == maloai);
            if (obj == null)
            {
                Response.Redirect("Danhmuc.aspx");

            }
            else
            {
                txtTen.Text = obj.tenloai;
            }
        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int maloai = Convert.ToInt32(Request.QueryString["maloai"]);
            banhang2Entities db = new banhang2Entities();
            loaisp obj = db.loaisp.FirstOrDefault(x => x.maloai == maloai);
            obj.tenloai = txtTen.Text;
            db.SaveChanges();
            Response.Redirect("Danhmuc.aspx");
        }
    }
}