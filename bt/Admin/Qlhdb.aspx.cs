using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Qlhdb : System.Web.UI.Page
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
            List<hoadon> lsp = db.hoadon.ToList();
            dgvhdb.DataSource = lsp;
            dgvhdb.DataBind();

        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_hd = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            hoadon obj = db.hoadon.FirstOrDefault(x => x.id_hd == id_hd);
            if (obj != null)
            {
                db.hoadon.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}