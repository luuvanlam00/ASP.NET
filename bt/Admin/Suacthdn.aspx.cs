using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suacthdn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                getsp();
            }
        }
        public void getData()
        {
            int id_ctdhn = Convert.ToInt32(Request.QueryString["id_cthdn"]);
            banhang2Entities db = new banhang2Entities();
            cthdnhap obj = db.cthdnhap.FirstOrDefault(x => x.id_cthdnhap == id_ctdhn);
            if (obj == null)
            {
                Response.Redirect("Chitiethdn.aspx?id_hdnhap=" + obj.id_hdnhap);

            }
            else
            {
                txtma.Text = obj.id_hdnhap.ToString();
                cmbsp.SelectedValue = obj.masp.ToString();
                txtsl.Text = obj.soluong.ToString();
                txtdg.Text = obj.dongia.ToString();
                txtma.ReadOnly = true;


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

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int id_ctdhn = Convert.ToInt32(Request.QueryString["id_cthdn"]);
            banhang2Entities db = new banhang2Entities();
            cthdnhap obj = db.cthdnhap.FirstOrDefault(x => x.id_cthdnhap == id_ctdhn);
            obj.id_hdnhap = Convert.ToInt32(txtma.Text);
            obj.masp = Convert.ToInt32(cmbsp.SelectedValue);
            obj.soluong = Convert.ToInt32(txtsl.Text);
            obj.dongia = Convert.ToSingle(txtdg.Text);
            db.SaveChanges();
            Response.Redirect("Chitiethdn.aspx?id_hdnhap="+ obj.id_hdnhap);
        }
    }
}