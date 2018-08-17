using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.Modelo
{
    public class Pub_info
    {
        public string pub_id { get; set; }
        public byte[] logo { get; set; }
        public string pr_info { get; set; }

        public Pub_info()
        {
            this.pub_id = "";
            this.logo = null;
            this.pr_info = "";
        }
        public Pub_info(string apub_id, byte[] alogo, string apr_info)
        {
            this.pub_id = apub_id;
            this.logo = alogo;
            this.pr_info = apr_info;
        }

    }
}