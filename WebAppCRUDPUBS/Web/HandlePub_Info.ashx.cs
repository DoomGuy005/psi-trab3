using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS
{
    /// <summary>
    /// Descrição resumida de HandlePub_Info
    /// </summary>
    public class HandlePub_Info : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string pub_id;
            List<Modelo.Pub_info> aListPub_info;
            Modelo.Pub_info aPub_info;
            DAL.DALPub_info aDALPub_info;

            pub_id = context.Request.QueryString["id"].ToString();

            // Instancia objeto da camada de negocio
            aDALPub_info = new DAL.DALPub_info();
            // Chama metodo de select passando o pub_id
            aListPub_info = aDALPub_info.Select(pub_id);

            if (aListPub_info.Count > 0)
            {
                aPub_info = aListPub_info[0];
                context.Response.ContentType = aPub_info.logo.ToString();
                context.Response.BinaryWrite(aPub_info.logo);
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}