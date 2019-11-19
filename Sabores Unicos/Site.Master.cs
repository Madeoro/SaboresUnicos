using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nome"] != null)
            {
                LinkButtonLogin.Visible = false;
                LinkButtonRegistar.Visible = false;
                LinkButtonLogout.Visible = true;
                LinkButtonUser.Text = Session["Nome"].ToString();
            }

        }

        protected void LinkInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void LinkButtonRegistar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registo.aspx");
        }

        protected void LinkButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButtonUser_Click(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Utilizadores.aspx");
            }
            else
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            LinkButtonLogin.Visible = true;
            LinkButtonRegistar.Visible = true;
            LinkButtonUser.Visible = false;
            LinkButtonRegistar.Visible = false;

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