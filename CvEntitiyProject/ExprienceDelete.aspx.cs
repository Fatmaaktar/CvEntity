using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities db = new CvEntityEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var ex = db.TBL_ABOUT.Find(x);
            db.TBL_ABOUT.Remove(ex);
            db.SaveChanges();
            Response.Redirect("Experiences.aspx");
        }
    }
}