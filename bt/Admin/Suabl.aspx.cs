using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suabl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                getsp();

            }

        }
        public void getsp()
        {

            banhang2Entities db = new banhang2Entities();
            List<sanpham> obj = db.sanpham.ToList();
            cmbsp.DataSource = obj;
            cmbsp.DataValueField = "masp";
            cmbsp.DataTextField = "tensp";
            cmbsp.DataBind();
        }
        public void getData()
        {
            int id_bl = Convert.ToInt32(Request.QueryString["id_bl"]);
            banhang2Entities db = new banhang2Entities();
            binhluan obj = db.binhluan.FirstOrDefault(x => x.id_bl == id_bl);
            if (obj == null)
            {
                Response.Redirect("Binhluan.aspx");

            }
            else
            {

                cmbsp.SelectedValue = obj.masp.ToString();
                txtten.Text = obj.ten;
                txtNgay.Text = obj.thoigian.ToString();
                txtnoidung.Text = obj.noidung;
                txtsdt.Text = obj.sdt;

            }


        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int id_bl = Convert.ToInt32(Request.QueryString["id_bl"]);
            banhang2Entities db = new banhang2Entities ();
            binhluan obj = db.binhluan.FirstOrDefault(x => x.id_bl == id_bl);
            obj.masp = Convert.ToInt32(cmbsp.SelectedValue);
            obj.ten = txtten.Text;
            obj.thoigian = DateTime.Parse(txtNgay.Text);
            obj.noidung = txtnoidung.Text;
            obj.sdt = txtsdt.Text;
            db.SaveChanges();
            Response.Redirect("Binhluan.aspx");
        }
    }
}