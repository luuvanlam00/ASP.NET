using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suakh1 : System.Web.UI.Page
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
            int id_kh = Convert.ToInt32(Request.QueryString["id_kh"]);
            banhang2Entities db = new banhang2Entities();
            khachhang obj = db.khachhang.FirstOrDefault(x => x.id_kh == id_kh);
            if (obj == null)
            {
                Response.Redirect("Khachhang.aspx");

            }
            else
            {
                txtTen.Text = obj.tenkh;
                txtem.Text = obj.email;
                txtsdt.Text = obj.sdt;

            }


        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int id_kh = Convert.ToInt32(Request.QueryString["id_kh"]);
            banhang2Entities db = new banhang2Entities();
            khachhang obj = db.khachhang.FirstOrDefault(x => x.id_kh == id_kh);
            obj.tenkh = txtTen.Text;
            obj.email = txtem.Text;
            obj.sdt = txtsdt.Text;
            db.SaveChanges();
            Response.Redirect("Khachhang.aspx");
        }
    }
}