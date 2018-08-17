using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPUBS
{
    public partial class WebFormAuthorsNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Modelo.Authors aAuthors;
            DAL.DALAuthors aDALAuthors;

            // Instancia um Objeto de Livro com as informações fornecidas
            aAuthors = new Modelo.Authors(
                TextBoxAuID.Text, TextBoxLName.Text, TextBoxFName.Text, TextBoxPhone.Text, TextBoxAddress.Text, TextBoxCity.Text, TextBoxState.Text, TextBoxZip.Text);

            // Instancia objeto da camada de negocio
            aDALAuthors = new DAL.DALAuthors();

            // Chama metodo de insert passando o objeto preenchido
            aDALAuthors.Insert(aAuthors);

            // Chama Página de Titulos
            Response.Redirect("~\\WebFormAuthors.aspx");

        }
    }
}