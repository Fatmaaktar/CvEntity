using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities db = new CvEntityEntities();
            int x = int.Parse(Request.QueryString["ID"]);
            var message = db.TBL_COMMUNICATİON.Find(x);
            TxtNameSurname.Text = message.NAMESURNAME;
            TxtMail.Text = message.MAİL;
            TxtKonu.Text = message.KONU;
            TxtMessage.Text = message.MESSAGE;
        }
    }
}