using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.Modelo
{
    public class Publishers
    {
        public string pub_id { get; set; }
        public string pub_name { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string country { get; set; }

        // Construtor
        public Publishers()
        {
            this.pub_id = "";
            this.pub_name = "";
            this.city = "";
            this.state = "";
            this.country = "";
        }

        public Publishers(string apub_id, string apub_name, string acity, string astate, string acountry)
        {
            this.pub_id = apub_id;
            this.pub_name = apub_name;
            this.city = acity;
            this.state = astate;
            this.country = acountry;
        }
    }
}