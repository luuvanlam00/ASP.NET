using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Binhluan : System.Web.UI.Page
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
            List<binhluan> lsp = db.binhluan.ToList();
            dgvbl.DataSource = lsp;
            dgvbl.DataBind();

        }


        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_bl = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            binhluan obj = db.binhluan.FirstOrDefault(x => x.id_bl == id_bl);
            if (obj != null)
            {
                db.binhluan.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}