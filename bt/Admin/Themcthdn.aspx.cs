using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Themcthdn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {   
                getsp();
                getid();
                
               
            }
        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {
           
            banhang2Entities db1 = new banhang2Entities();
            cthdnhap obj1 = new cthdnhap();
            obj1.id_hdnhap =Convert.ToInt32(cmbma.SelectedValue);
            obj1.masp = Convert.ToInt32(cmbsp.SelectedValue);
            obj1.soluong = Convert.ToInt32(txtsl.Text);
            obj1.dongia = float.Parse(txtdg.Text);
            db1.cthdnhap.Add(obj1);
            db1.SaveChanges();
            Response.Redirect("Chitiethdn.aspx");


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
        public void getid()
        {

            banhang2Entities db = new banhang2Entities();
            List<hdn> obj = db.hdn.ToList();
            cmbma.DataSource = obj;
            cmbma.DataValueField = "id_hdnhap";
            cmbma.DataBind();
        }

    }
}