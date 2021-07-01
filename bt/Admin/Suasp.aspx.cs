using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suasp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                getCncc();
                getCloai();
            }
        }
        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            banhang2Entities db = new banhang2Entities();
            sanpham obj = db.sanpham.FirstOrDefault(x => x.masp == masp);
            obj.tensp = txtTen.Text;
            
            obj.mota = txtmota.Text;
            obj.chitiet = txtct.Text;
            obj.giaban = float.Parse(txtgb.Text);
            obj.giakm = float.Parse(txtgiakm.Text);
            obj.maloai = Convert.ToInt32(cmbloai.SelectedValue);
            obj.mancc = Convert.ToInt32(cmbncc.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Sanpham.aspx");
        }
        public void getData()
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            banhang2Entities db = new banhang2Entities();
            sanpham obj = db.sanpham.FirstOrDefault(x => x.masp == masp);
            if (obj == null)
            {
                Response.Redirect("Sanpham.aspx");

            }
            else
            {
                 txtTen.Text=obj.tensp;
                
                txtmota.Text = obj.mota;
                txtct.Text = obj.chitiet;
                txtgb.Text = obj.giaban.ToString();
                txtgiakm.Text = obj.giakm.ToString();
                cmbloai.SelectedValue = obj.maloai.ToString();
                cmbncc.SelectedValue = obj.mancc.ToString();

            }


        }

        public void getCloai()
        {
            banhang2Entities db = new banhang2Entities();
            List<loaisp> list = db.loaisp.ToList();
            cmbloai.DataSource = list;
            cmbloai.DataValueField = "maloai";
            cmbloai.DataTextField = "tenloai";
            cmbloai.DataBind();
        }
        public void getCncc()
        {
            banhang2Entities db = new banhang2Entities();
            List<ncc> obj = db.ncc.ToList();
            cmbncc.DataSource = obj;
            cmbncc.DataValueField = "mancc";
            cmbncc.DataTextField = "tenncc";
            cmbncc.DataBind();
        }

    }
}