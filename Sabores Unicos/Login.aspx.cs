using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Sabores_Unicos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Nome"] != null)
            {
                lblInfoLogin.Visible = true;
                lblInfoLogin.Text = Session["Nome"].ToString();
                txtPass.Visible = false;
                txtEmail.Visible = false;
                btnLogin.Visible = false;
                lblNome.Visible = false;
                lblPass1.Visible = false;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPass.Text;
            DataTable tabela = BLL.Utilizadores.login(email, password);
            if (tabela.Rows.Count != 1)
            {
                lblInfoLogin.Text = "Dados inválidos!";
                lblInfoLogin.Visible = true;
            }
            else
            {
                Session.Add("Id_Utilizador", tabela.Rows[0]["Id_Utilizador"]);
                Session.Add("Email", tabela.Rows[0]["Email"]);
                Session.Add("Nome", tabela.Rows[0]["Nome"]);
                Session.Add("Password", tabela.Rows[0]["Password"]);
                Session.Add("Admin", tabela.Rows[0]["Admin"]);
                Session.Add("Morada", tabela.Rows[0]["Morada"]);
                Session.Add("Codigo", tabela.Rows[0]["Codigo_Postal"]);
                Session.Add("Localidade", tabela.Rows[0]["Localidade"]);
                Session.Add("Telefone", tabela.Rows[0]["Telefone"]);
                Session.Add("NIF", tabela.Rows[0]["NIF"]);
                Session.Add("Data_Nascimento", tabela.Rows[0]["Data_Nascimento"]);
                txtEmail.Text = "";
                txtPass.Text = "";

                if (Session["Admin"].ToString() == "1")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Utilizadores.aspx");


                }
            }
        }
    }
}