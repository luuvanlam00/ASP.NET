using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace bt
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["cart"] != null)
            {
                DataTable dt = (DataTable)Session["cart"];
                giohang.DataSource = dt;
                giohang.DataBind();
                float tongtien = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    tongtien += Convert.ToSingle(dt.Rows[0]["Money"]);
                }
                lb.Text = tongtien.ToString("N0");

                
            }

        }

     

       

        protected void bt_Command(object sender, CommandEventArgs e)
        {
            Cart.Remove(Convert.ToInt32(e.CommandArgument.ToString()));
            Response.Redirect(Request.Url.ToString());
            
        }


       
    }
}