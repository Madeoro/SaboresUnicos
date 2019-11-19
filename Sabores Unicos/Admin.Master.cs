using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session["Nome"] = null;
            Session["Password"] = null;
            Session["Admin"] = null;
            Session["Email"] = null;
            Session["Morada"] = null;
            Session["Codigo_Postal"] = null;
            Session["Localidade"] = null;
            Session["Telefone"] = null;
            Session["NIB"] = null;
            Session["Data_Nascimento"] = null;

            Response.Redirect("Index.aspx");
        }
    }
}