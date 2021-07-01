using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Danhmuc : System.Web.UI.Page
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
            List<loaisp> lsp = db.loaisp.ToList();
            dgvDanhmuc.DataSource = lsp;
            dgvDanhmuc.DataBind();

        }
      

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int maloai = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            loaisp obj = db.loaisp.FirstOrDefault(x => x.maloai == maloai);
            if (obj != null)
            {
                db.loaisp.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
    }
}