using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.Modelo
{
    public class Title
    {
        public string title_id { get; set; }
        public string title { get; set; }
        public string type { get; set; }
        public string pub_id { get; set; }
        public double price { get; set; }
        public double advance { get; set; }
        public int royalty { get; set; }
        public int ytd_sales { get; set; }
        public string notes { get; set; }
        public DateTime pubdate { get; set; }
        // Construtor
        public Title()
        {
            this.title_id = "";
            this.title = "";
            this.pub_id = "";
    }
        public Title(string atitle_id, string atitle, string apub_id)
        {
            this.title_id = atitle_id;
            this.title = atitle;
            this.pub_id = apub_id;
        }

    }
}