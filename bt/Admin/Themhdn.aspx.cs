using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Themhdn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCncc();
            }

        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
           hdn obj = new hdn();
            obj.mancc = Convert.ToInt32(cmbncc.SelectedValue);
            obj.ngaynhap = DateTime.Parse(txtNgay.Text);
            obj.tennguoigiao = txtten.Text;
            obj.noidung = txtnd.Text;
            db.hdn.Add(obj);
            db.SaveChanges();
            Response.Redirect("Hoadonnhap.aspx");


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