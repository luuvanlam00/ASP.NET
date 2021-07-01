using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Ncc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getData();
            }    

        }
        public void getData()
        {
           banhang2Entities db = new banhang2Entities();
            List<ncc> obj = db.ncc.ToList();
            dgvNcc.DataSource = obj;
            dgvNcc.DataBind();
            
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int mancc = Convert.ToInt32(e.CommandArgument);
           banhang2Entities db = new banhang2Entities();
            ncc obj = db.ncc.FirstOrDefault(x => x.mancc == mancc);
            if(obj!=null)
            {
                db.ncc.Remove(obj);
                db.SaveChanges();
                getData();
            }    
        }
    }
}