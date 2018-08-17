using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.Modelo
{
    public class Authors
    {
        public string au_id { get; set; }
        public string au_name { get; set; }
        public string au_fname { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zip { get; set; }
        public bool contract { get; set; }
        // Construtor
        public Authors()
        {
            this.au_id = "";
            this.au_name = "";
            this.au_fname = "";
            this.phone = "";
            this.address = "";
            this.city = "";
            this.state = "";
            this.zip = "";
            this.contract = true;
        }
        public Authors(string aau_id, string aau_name, string aau_fname, string aphone, string aaddress, string acity, string astate, string azip)
        {
            this.au_id = aau_id;
            this.au_name = aau_name;
            this.au_fname = aau_fname;
            this.phone = aphone;
            this.address = aaddress;
            this.city = acity;
            this.state = astate;
            this.zip = azip;
            this.contract = true;
        }
    }
}