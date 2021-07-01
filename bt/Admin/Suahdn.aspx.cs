using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt
{
    public partial class Suahdn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCncc();
                getData();
            }
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
        public void getData()
        {
            int id_dhn = Convert.ToInt32(Request.QueryString["id_hdn"]);
            banhang2Entities db = new banhang2Entities();
            hdn obj = db.hdn.FirstOrDefault(x => x.id_hdnhap == id_dhn);
            if (obj == null)
            {
                Response.Redirect("Hoadonnhap.aspx");

            }
            else {
              
                cmbncc.SelectedValue = obj.mancc.ToString();
                txtNgay.Text =obj.ngaynhap.ToString() ;
                txtten.Text = obj.tennguoigiao;
                txtnd.Text = obj.noidung;

            }


        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int id_dhn = Convert.ToInt32(Request.QueryString["id_hdn"]);
            banhang2Entities db = new banhang2Entities();
            hdn obj = db.hdn.FirstOrDefault(x => x.id_hdnhap == id_dhn);
            obj.mancc = Convert.ToInt32(cmbncc.SelectedValue);
            obj.ngaynhap = DateTime.Parse(txtNgay.Text);
            obj.tennguoigiao = txtten.Text;
            obj.noidung = txtnd.Text;
            db.SaveChanges();
            Response.Redirect("Hoadonnhap.aspx");
        }
    }
}