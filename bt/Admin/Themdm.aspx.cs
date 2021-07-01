using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class CTdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {

            
            banhang2Entities db = new banhang2Entities();
            loaisp obj;
            obj = new loaisp();
            obj.tenloai = txtTen.Text;
            db.loaisp.Add(obj);
            db.SaveChanges();
            Response.Redirect("Danhmuc.aspx");
        }
      
    }
    }
