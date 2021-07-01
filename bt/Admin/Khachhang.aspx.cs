using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Khachhang : System.Web.UI.Page
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
            List<khachhang> lsp = db.khachhang.ToList();
            dgvkhachhang.DataSource = lsp;
            dgvkhachhang.DataBind();

        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int id_kh = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            khachhang obj = db.khachhang.FirstOrDefault(x => x.id_kh == id_kh);
            if (obj != null)
            {
                db.khachhang.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }

    }
}