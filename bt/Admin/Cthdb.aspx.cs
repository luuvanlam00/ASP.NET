using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Cthdb : System.Web.UI.Page
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
            int id_hd = Convert.ToInt32(Request.QueryString["id_hd"]);
            banhang2Entities db = new banhang2Entities();
            List<cthd> lsp = db.cthd.Where(x => x.id_hd == id_hd).ToList();
            dgvcthdn.DataSource = lsp;
            dgvcthdn.DataBind();

        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_cthd = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            cthd obj = db.cthd.FirstOrDefault(x => x.id_cthd == id_cthd);
            if (obj != null)
            {
                db.cthd.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}