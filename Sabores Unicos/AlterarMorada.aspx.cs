using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class AlterarMorada : System.Web.UI.Page
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
            string Morada = Session["Morada"].ToString();
            string Codigo = Session["Codigo"].ToString();
            string Localidade = Session["Localidade"].ToString();
            //Morada
            if (txtMorada1.Text == "")
            {
                Morada = Session["Morada"].ToString();
            }
            else
            {
                Morada = txtMorada1.Text;
            }

            //Codigo
            if (txtCodigo.Text == "")
            {
                Codigo = Session["Codigo"].ToString();
            }
            else
            {
                Codigo = txtCodigo.Text;
            }
            //Localidade
            if (txtLocalidade.Text == "")
            {
                Localidade = Session["Localidade"].ToString();
            }
            else
            {
                Localidade = txtLocalidade.Text;


            }
            Email = Session["Email"].ToString();
            //Introduzir
            int resultade = BLL.Utilizadores.AlterarPerfilMorada(Email, Localidade, Morada, Codigo);
            lblInfoAlterarUtilizador.Visible = true;
            Session["Morada"] = txtMorada1.Text;
            Session["Codigo"] = txtCodigo.Text;
            Session["Localidade"] = txtLocalidade.Text;
        }
        protected void btnVoltar1_Click(object sender, EventArgs e)
        {

        }
    }
}