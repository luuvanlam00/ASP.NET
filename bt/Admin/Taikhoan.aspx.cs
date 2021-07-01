using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Taikhoan : System.Web.UI.Page
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
            List<nguoidung> lsp = db.nguoidung.ToList();
            dgvTaikhoan.DataSource = lsp;
            dgvTaikhoan.DataBind();

        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string taikhoan =e.CommandArgument.ToString();
            banhang2Entities db = new banhang2Entities();
            nguoidung obj = db.nguoidung.FirstOrDefault(x => x.taikhoan == taikhoan);
            if (obj != null)
            {
                db.nguoidung.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }


    }
}