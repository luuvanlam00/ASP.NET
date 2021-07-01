using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Thembl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getsp();
            }
        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {

            banhang2Entities db1 = new banhang2Entities();
            binhluan obj1 = new binhluan();
           
            obj1.masp = Convert.ToInt32(cmbsp.SelectedValue);
            obj1.ten = txtten.Text;
            obj1.thoigian = DateTime.Parse(txtNgay.Text);
            obj1.noidung = txtnoidung.Text;
            obj1.sdt = txtsdt.Text;
            db1.binhluan.Add(obj1);
            db1.SaveChanges();
            Response.Redirect("Binhluan.aspx");


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
    }
}