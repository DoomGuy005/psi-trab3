using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPUBS.Web
{
    public partial class WebFormPublishersNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Modelo.Publishers aPublishers;
            DAL.DALPublishers aDALPublishers;
            Modelo.Pub_info aPub_info;
            DAL.DALPub_info aDALPub_info;

            // Instancia um Objeto de Livro com as informações fornecidas
            aPublishers = new Modelo.Publishers(
                TextBoxPubID.Text, TextBoxPubName.Text, TextBoxCity.Text,
                TextBoxState.Text, TextBoxCountry.Text);

            // Instancia objeto da camada de negocio
            aDALPublishers = new DAL.DALPublishers();

            // Chama metodo de insert passando o objeto preenchido
            aDALPublishers.Insert(aPublishers);

            // Instancia um Objeto de Livro com as informações fornecidas
            aPub_info = new Modelo.Pub_info(
                TextBoxPubID.Text, FileUpload1.FileBytes,
                TextBoxPrInfo.Text, FileUpload1.FileName);


            // Instancia objeto da camada de negocio
            aDALPub_info = new DAL.DALPub_info();

            // Chama metodo de insert passando o objeto preenchido
            aDALPub_info.Insert(aPub_info);

            // Salva arquivo na pasta Imagens
            string filename = Request.PhysicalApplicationPath + "imagens\\" +
                      FileUpload1.FileName;
            FileUpload1.SaveAs(filename);

            // Chama Página de Editora
            Response.Redirect("~\\Web\\WebFormPublishers.aspx");
        }

    }
}