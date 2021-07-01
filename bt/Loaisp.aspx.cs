using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt
{
    public partial class Loaisp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdanhmuc();
                getsp();
            }
        }
        public void getdanhmuc()
        {
            banhang2Entities db = new banhang2Entities();
            danhmuc.DataSource = db.loaisp.ToList();
            danhmuc.DataBind();
        }
        public void getsp()
        {
            int maloai = Convert.ToInt32(Request.QueryString["maloai"]);
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.Where(x => x.maloai == maloai).ToList();
            sp.DataBind();
            
        }
        public string getAnhDaiDien(int masp)
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