using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.DAL
{
    public class DALPub_info
    {
        private string connectionString = "";

        public DALPub_info()
        {
            connectionString = ConfigurationManager.ConnectionStrings
                      ["PubsConnectionString"].ConnectionString;
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Pub_info> Select(string pub_id)
        {
            // Variavel para armazenar um livro
            Modelo.Pub_info aPub_info;
            // Cria Lista Vazia
            List<Modelo.Pub_info> aListPub_info = new List<Modelo.Pub_info>();
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();
            // define SQL do comando
            cmd.CommandText = "Select * from Pub_info Where pub_id = @pub_id";
            cmd.Parameters.AddWithValue("@pub_id", pub_id);
            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();
            // Le titulo do livro do resultado e apresenta no segundo rótulo
            if (dr.HasRows)
            {

                while (dr.Read()) // Le o proximo registro
                {
                    // Cria objeto com dados lidos do banco de dados
                    aPub_info = new Modelo.Pub_info(
                        dr["pub_id"].ToString(),
                        (byte[])dr["logo"],
                        dr["pr_info"].ToString()
                        );
                    // Adiciona o livro lido à lista
                    aListPub_info.Add(aPub_info);
                }
            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();
            return aListPub_info;
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.Pub_info obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("DELETE FROM Pub_info WHERE pub_id = @pub_id", conn);
            cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);

            // Executa Comando
            cmd.ExecuteNonQuery();

        }
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Pub_info obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("INSERT INTO Pub_info (pub_id, logo, pr_info) VALUES(@pub_id, @logo, @pr_info)", conn);
            cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);
            cmd.Parameters.AddWithValue("@logo", obj.logo);
            cmd.Parameters.AddWithValue("@pr_info", obj.pr_info);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }
        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.Pub_info obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("UPDATE Pub_info SET logo = @logo, pr_info = @pr_info WHERE pub_id = @pub_id", conn);
            cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);
            cmd.Parameters.AddWithValue("@logo", obj.logo);
            cmd.Parameters.AddWithValue("@pr_info", obj.pr_info);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }


    }
}