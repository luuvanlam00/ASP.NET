using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suancc : System.Web.UI.Page
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
            int mancc = Convert.ToInt32(Request.QueryString["mancc"]);
            banhang2Entities db = new banhang2Entities();
            ncc obj = db.ncc.FirstOrDefault(x => x.mancc == mancc);
            if (obj == null)
            {
                Response.Redirect("Ncc.aspx");

            }
            else
            {
                txtTen.Text = obj.tenncc;
            }
        }

        protected void tbnSua_Click(object sender, EventArgs e)
        {
            int mancc = Convert.ToInt32(Request.QueryString["mancc"]);
            banhang2Entities db = new banhang2Entities();
            ncc obj = db.ncc.FirstOrDefault(x => x.mancc == mancc);
            obj.tenncc = txtTen.Text;
            db.SaveChanges();
            Response.Redirect("Ncc.aspx");

        }
    }
}