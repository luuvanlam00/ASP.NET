using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suahdb : System.Web.UI.Page
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
            int id_dh = Convert.ToInt32(Request.QueryString["id_hd"]);
            banhang2Entities db = new banhang2Entities();
            hoadon obj = db.hoadon.FirstOrDefault(x => x.id_hd== id_dh);
            if (obj == null)
            {
                Response.Redirect("Qlhdb.aspx");

            }
            else
            {
                txtNgay.Text = obj.thoigian.ToString();
                txtten.Text = obj.tenkh;
                txtnd.Text = obj.diachi; ;
                TextBox1.Text = obj.trangthai;

            }


        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int id_dh = Convert.ToInt32(Request.QueryString["id_hd"]);
            banhang2Entities db = new banhang2Entities();
            hoadon obj = db.hoadon.FirstOrDefault(x => x.id_hd == id_dh);
            obj.thoigian = DateTime.Parse(txtNgay.Text);
            obj.tenkh = txtten.Text;
            obj.diachi = txtnd.Text;
            obj.trangthai = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Qlhdb.aspx");
        }
    }
}