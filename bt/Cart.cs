using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace bt
{
    public class Cart
    {
        static void Create()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Image", typeof(string));
            dt.Columns.Add("Chitiet", typeof(string));
            dt.Columns.Add("Quantity", typeof(int));
            dt.Columns.Add("Price", typeof(float));
            dt.Columns.Add("Money", typeof(float));
            System.Web.HttpContext.Current.Session["cart"] = dt;


        }
        public static void Add(int ID, int Quantity)
        {
            if (System.Web.HttpContext.Current.Session["cart"] == null)
            {
                Create();
                Add(ID, Quantity);
            }
            else
            {
                DataTable dt = new DataTable();
                dt = new Product().Getdetail(ID);
                DataTable dt1 = new DataTable();
                dt1 = new Product().Getanh(ID);
                if (dt.Rows.Count > 0 && dt1.Rows.Count > 0)
                {
                    string name = dt.Rows[0]["tensp"].ToString();
                    string chitiet = dt.Rows[0]["chitiet"].ToString();
                    string image = dt1.Rows[0]["url"].ToString();
                    float price = Convert.ToSingle((dt.Rows[0]["giakm"].ToString()));
                    float money = price * Quantity;

                    DataTable dtcart = new DataTable();
                    dtcart = (DataTable)System.Web.HttpContext.Current.Session["cart"];

                    bool a = false;

                    for (int i = 0; i < dtcart.Rows.Count; i++)
                    {
                        if (dtcart.Rows[i]["ID"].ToString() == ID.ToString())
                        {
                            a = true;
                            Quantity += Convert.ToInt32(dtcart.Rows[i]["Quantity"].ToString());
                            dtcart.Rows[i]["Quantity"] = Quantity;
                            dtcart.Rows[i]["Money"] = Quantity * Convert.ToSingle(dtcart.Rows[i]["Price"].ToString());
                            System.Web.HttpContext.Current.Session["cart"] = dtcart;
                            break;
                        }
                    }
                    if (a == false)
                    {
                        if (dtcart != null)
                        {
                            DataRow dr = dtcart.NewRow();
                            dr["ID"] = ID;
                            dr["Name"] = name;
                            dr["Chitiet"] = chitiet;
                            dr["Image"] = image;
                            dr["Quantity"] = Quantity;
                            dr["Price"] = price;
                            dr["Money"] = money;
                            dtcart.Rows.Add(dr);
                            System.Web.HttpContext.Current.Session["cart"] = dtcart;

                        }
                    }


                }
            }
        }
        public static void Remove(int ID)
        {
            DataTable dtcart = new DataTable();
            dtcart = (DataTable)System.Web.HttpContext.Current.Session["cart"];
            for (int i = 0; i< dtcart.Rows.Count; i++)
            {

                if (dtcart.Rows[i]["ID"].ToString()==ID.ToString())
                {
                    dtcart.Rows.RemoveAt(i);
                    break;
                }
                System.Web.HttpContext.Current.Session["cart"] = dtcart;
            }
        }


    }
}