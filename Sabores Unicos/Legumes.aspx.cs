using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class Legumes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "alterar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                Session["Id_Produto"] = GridView1.DataKeys[index]["Id_Produto"];
                Session["Categoria"] = GridView1.DataKeys[index]["Categoria"];
                Session["Nome"] = GridView1.DataKeys[index]["Nome"];
                Session["Info"] = GridView1.DataKeys[index]["Info"];
                Session["Preco"] = GridView1.DataKeys[index]["Preco"];
                Session["Imagem1"] = GridView1.DataKeys[index]["Imagem1"];
            }

        }


    }
}