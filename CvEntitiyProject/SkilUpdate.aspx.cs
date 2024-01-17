using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        CvEntityEntities1 db = new CvEntityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var skl = db.TBL_SKILS.Find(x);
                TextBox1.Text = skl.SKILS;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var skl = db.TBL_SKILS.Find(x);
            skl.SKILS = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}