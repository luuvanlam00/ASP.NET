using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Hoadonnhap : System.Web.UI.Page
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
            List<hdn> lsp = db.hdn.ToList();
            dgvhdn.DataSource = lsp;
            dgvhdn.DataBind();

        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_hdn = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            hdn obj = db.hdn.FirstOrDefault(x => x.id_hdnhap == id_hdn);
            if (obj != null)
            {
                db.hdn.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}