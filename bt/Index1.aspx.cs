using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt
{
    public partial class Index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                getData1();
            }
        }
        public void getData()
        {
            banhang2Entities db = new banhang2Entities();
            productHot.DataSource = db.sanpham.Take(4).ToList();
            productHot.DataBind();

        }
        public void getData1()
        {
            banhang2Entities db = new banhang2Entities();
            Repeater1.DataSource = db.sanpham.Where(x => x.masp > 17).Take(4).ToList();
            Repeater1.DataBind();

        }
 
        public  string getAnhDaiDien(int masp)
        {
            banhang2Entities db = new banhang2Entities();
            media obj = db.media.FirstOrDefault(x => x.masp == masp && x.main == true);
            if (obj == null)
            {
                return "";
            }
            else
            {
                return obj.url;
            }
        }
    }
}