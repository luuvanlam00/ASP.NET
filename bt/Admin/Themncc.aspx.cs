using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class CTncc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
     

        protected void btnLuu_Click(object sender, EventArgs e)
        {

           
            banhang2Entities db = new banhang2Entities();
            ncc obj;
            obj = new ncc();
            obj.tenncc = txtTen.Text;
            db.ncc.Add(obj);
            db.SaveChanges();
            Response.Redirect("Ncc.aspx");



        }
    }
}