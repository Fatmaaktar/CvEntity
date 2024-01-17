using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        CvEntityEntities1 db = new CvEntityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_SKILS.Count().ToString();
            Label2.Text = db.TBL_COMMUNICATION.Count().ToString();
        }
    }
}