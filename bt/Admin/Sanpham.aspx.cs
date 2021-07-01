using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Sanpham : System.Web.UI.Page
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
           banhang2Entities db = new banhang2Entities();
            List<sanpham> list = db.sanpham.ToList();
            dgvsp.DataSource = list;
            dgvsp.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int masp = Convert.ToInt32(e.CommandArgument);
           banhang2Entities db = new banhang2Entities();
            sanpham obj = db.sanpham.FirstOrDefault(x => x.masp == masp);
            if (obj != null)
            {
                db.sanpham.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        public string getAnhDaiDien(int masp)
        {
           banhang2Entities db = new banhang2Entities();
            media obj = db.media.FirstOrDefault(x => x.masp == masp && x.main == true);
            if (obj == null)
            {
                return "";
            }
            else
            {
                return obj.url;
            }
        }
    }
}