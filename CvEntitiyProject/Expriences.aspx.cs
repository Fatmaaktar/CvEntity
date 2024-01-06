using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities db = new CvEntityEntities();
            var experience = db.TBL_ABOUT.ToList();
            Repeater1.DataSource = experience;
            Repeater1.DataBind();
        }
    }
}