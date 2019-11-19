using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class AlterarEmail : System.Web.UI.Page
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

            //Email
            if (txtEmail.Text == "")
            {
                Email = Session["Email"].ToString();

            }
            else
            {
                Email = txtEmail.Text;
            }


            int resultade = BLL.Utilizadores.AlterarPerfiEmail(Email);
            lblInfoAlterarUtilizador.Visible = true;
            Session["Email"] = txtEmail.Text;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilizadores.aspx");
        }
    }
}