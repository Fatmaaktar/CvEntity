using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities1 db = new CvEntityEntities1();
            var messages = db.TBL_COMMUNICATION.ToList();
            Repeater1.DataSource = messages;
            Repeater1.DataBind();
        }
    }
}