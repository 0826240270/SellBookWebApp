using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach.Models
{
    public partial class Sach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["TENSACH"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox1")).Text;
            SqlDataSource1.InsertParameters["MATG"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox2")).Text;
            SqlDataSource1.InsertParameters["GIABAN"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox3")).Text;
            SqlDataSource1.InsertParameters["HINHANH"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox4")).Text;
            SqlDataSource1.InsertParameters["NGAYXUATBAN"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox5")).Text;
            SqlDataSource1.Insert();
        }
    }
}