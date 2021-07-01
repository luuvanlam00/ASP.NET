using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Themkh1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            khachhang obj = new khachhang();
            obj.tenkh = txtTen.Text;
            obj.email = txtem.Text;
            obj.sdt = txtsdt.Text;
            db.khachhang.Add(obj);
            db.SaveChanges();
            Response.Redirect("Khachhang.aspx");
        }
    }
   
}