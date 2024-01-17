using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        CvEntityEntities1 db = new CvEntityEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var entr = from x in db.TBL_ADMIN
                       where x.UserName == TextBox1.Text &&
                       x.Pasword == TextBox2.Text
                       select x;
            if (entr.Any())
            {
                Response.Redirect("Communication.aspx");
            }
            else
            {
                throw new UnauthorizedAccessException("Hatalı Kullanıcı Adı veya Şifre");
            }

        }
    }
}