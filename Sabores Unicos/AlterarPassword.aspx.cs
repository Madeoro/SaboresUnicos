using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class AlterarPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nome"] == null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            string Email = Session["Email"].ToString();
            String Password = Session["Password"].ToString();
            //Password
            if (txtPass0.Text == Session["Password"])
            {
                if (txtPass1.Text == "")
                {
                    Password = Session["Password"].ToString();
                }
                else
                {
                    Password = txtPass1.Text;
                }
            }
            Email = Session["Email"].ToString();



            int resultade = BLL.Utilizadores.AlterarPerfilPassword(Email, Password);
            lblInfoAlterarUtilizador.Visible = true;
            Session["Password"] = txtPass1.Text;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilizadores.aspx");
        }
    }
}