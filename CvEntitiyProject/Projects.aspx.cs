using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        CvEntityEntities1 db = new CvEntityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var project = db.TBL_MYWORKS.ToList();
            Repeater1.DataSource = project;
            Repeater1.DataBind();
        }
    }
}