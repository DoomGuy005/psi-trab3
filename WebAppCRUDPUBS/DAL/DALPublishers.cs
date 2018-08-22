using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.DAL
{
        public class DALPublishers
        {
            string connectionString = "";
            public DALPublishers() {
                this.connectionString = ConfigurationManager.ConnectionStrings["PubsConnectionString"].ConnectionString;
            }
            [DataObjectMethod(DataObjectMethodType.Select)]
            public List<Modelo.Publishers> SelectAll()
            {
                // Variavel para armazenar um livro
                Modelo.Publishers aPublishers;
                // Cria Lista Vazia
                List<Modelo.Publishers> aListPublishers = new List<Modelo.Publishers>();
                // Cria Conexão com banco de dados
                SqlConnection conn = new SqlConnection(connectionString);
                // Abre conexão com o banco de dados
                conn.Open();
                // Cria comando SQL
                SqlCommand cmd = conn.CreateCommand();
                // define SQL do comando
                cmd.CommandText = "Select * from Publishers";
                // Executa comando, gerando objeto DbDataReader
                SqlDataReader dr = cmd.ExecuteReader();
                // Le titulo do livro do resultado e apresenta no segundo rótulo
                if (dr.HasRows)
                {
                
                    while (dr.Read()) // Le o proximo registro
                    {
                        // Cria objeto com dados lidos do banco de dados
                        aPublishers = new Modelo.Publishers(
                            dr["pub_id"].ToString(),
                            dr["pub_name"].ToString(),
                            dr["city"].ToString(),
                            dr["state"].ToString(),
                            dr["country"].ToString()
                            );
                        // Adiciona o livro lido à lista
                        aListPublishers.Add(aPublishers);
                    }
                }
                // Fecha DataReader
                dr.Close();
                // Fecha Conexão
                conn.Close();
                return aListPublishers;
            }

            [DataObjectMethod(DataObjectMethodType.Delete)]
            public void Delete(Modelo.Publishers obj)
            {
                // Cria Conexão com banco de dados
                SqlConnection conn = new SqlConnection(connectionString);
                // Abre conexão com o banco de dados
                conn.Open();
                // Cria comando SQL
                SqlCommand com = conn.CreateCommand();
                // Define comando de exclusão
                SqlCommand cmd = new SqlCommand("DELETE FROM Publishers WHERE pub_id = @pub_id", conn);
                cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);
                // Executa Comando
                cmd.ExecuteNonQuery();
            }

            [DataObjectMethod(DataObjectMethodType.Insert)]
            public void Insert(Modelo.Publishers obj)
            {
                // Cria Conexão com banco de dados
                SqlConnection conn = new SqlConnection(connectionString);
                // Abre conexão com o banco de dados
                conn.Open();
                // Cria comando SQL
                SqlCommand com = conn.CreateCommand();
                // Define comando de exclusão
                SqlCommand cmd = new SqlCommand("INSERT INTO Publishers (pub_id, pub_name, city, state, country) VALUES(@pub_id, @pub_name, @city, @state, @country)", conn);
                cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);
                cmd.Parameters.AddWithValue("@pub_name", obj.pub_name);
                cmd.Parameters.AddWithValue("@city", obj.city);
                cmd.Parameters.AddWithValue("@state", obj.state);
                cmd.Parameters.AddWithValue("@country", obj.country);
                // Executa Comando
                cmd.ExecuteNonQuery();
            }

            [DataObjectMethod(DataObjectMethodType.Update)]
            public void Update(Modelo.Publishers obj)
            {   // Cria Conexão com banco de dados
                SqlConnection conn = new SqlConnection(connectionString);
                // Abre conexão com o banco de dados
                conn.Open();
                // Cria comando SQL
                SqlCommand com = conn.CreateCommand();
                // Define comando de exclusão
                SqlCommand cmd = new SqlCommand("UPDATE Publishers SET pub_name = @pub_name, city = @city, state = @state, country = @country WHERE pub_id = @pub_id", conn);
                cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);
                cmd.Parameters.AddWithValue("@pub_name", obj.pub_name);
                cmd.Parameters.AddWithValue("@city", obj.city);
                cmd.Parameters.AddWithValue("@state", obj.state);
                cmd.Parameters.AddWithValue("@country", obj.country);
                // Executa Comando
                cmd.ExecuteNonQuery();
            }

        }
}