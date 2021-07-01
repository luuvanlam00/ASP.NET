using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Chitiethdn : System.Web.UI.Page
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
            int id_hdnhap = Convert.ToInt32(Request.QueryString["id_hdnhap"]);
            banhang2Entities db = new banhang2Entities();
            List<cthdnhap> lsp = db.cthdnhap.Where(x =>x.id_hdnhap==id_hdnhap).ToList();
            dgvcthdn.DataSource = lsp;
            dgvcthdn.DataBind();

        }
    
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_cthdn = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            cthdnhap obj = db.cthdnhap.FirstOrDefault(x => x.id_cthdnhap == id_cthdn);
            if (obj != null)
            {
                db.cthdnhap.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}