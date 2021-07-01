using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt
{
    public partial class Sanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdanhmuc();
                getsp();
                search();
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
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.ToList();
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
        public void search()
        {
            string tim = Request.QueryString["tim"];
            banhang2Entities db = new banhang2Entities();
            if (!String.IsNullOrEmpty(tim))
            {
                sp.DataSource = db.sanpham.Where(x => x.tensp.Contains(tim)).ToList();
                sp.DataBind();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.OrderBy(x => x.giakm).ToList();
            sp.DataBind();

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.OrderByDescending(x => x.giakm).ToList();
            sp.DataBind();
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.Where(x => x.giakm < 5000000).ToList();
            sp.DataBind();
        }

        protected void Unnamed_Click3(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.Where(x => x.giakm > 5000000 && x.giakm < 10000000).ToList();
            sp.DataBind();
        }

        protected void Unnamed_Click4(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.Where(x => x.giakm > 10000000  && x.giakm < 20000000).ToList();
            sp.DataBind();
        }

        protected void Unnamed_Click5(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            sp.DataSource = db.sanpham.Where(x => x.giakm > 20000000).ToList();
            sp.DataBind();
        }
    }
}