using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPUBS
{
    public partial class WebFormTitleNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Modelo.Title aTitles;
            DAL.DALTitle aDALTitles;

            // Instancia um Objeto de Livro com as informações fornecidas
            aTitles = new Modelo.Title(
                TextBoxTitleID.Text, TextBoxTitle.Text, TextBoxPubID.Text);

            // Instancia objeto da camada de negocio
            aDALTitles = new DAL.DALTitle();

            // Chama metodo de insert passando o objeto preenchido
            aDALTitles.Insert(aTitles);

            // Chama Página de Titulos
            Response.Redirect("~\\WebFormTitle.aspx");

        }
    }
}