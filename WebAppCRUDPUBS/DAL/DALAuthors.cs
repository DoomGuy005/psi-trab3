using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPUBS.DAL
{
    public class DALAuthors
    {
        string connectionString = "";

        public DALAuthors()
        {
            connectionString = ConfigurationManager.ConnectionStrings
                      ["PubsConnectionString"].ConnectionString;
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Authors> SelectAll()
        {
            // Variavel para armazenar um autor
            Modelo.Authors aAuthor;
            // Cria Lista Vazia
            List<Modelo.Authors> aListAuthors = new List<Modelo.Authors>();
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();
            // define SQL do comando
            cmd.CommandText = "Select * from Authors";
            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();
            // Le nome do autor do resultado e apresenta no segundo rótulo
            if (dr.HasRows)
            {
                while (dr.Read()) // Le o proximo registro
                {
                    // Cria objeto com dados lidos do banco de dados
                    aAuthor = new Modelo.Authors(
                        dr["au_id"].ToString(),
                        dr["au_lname"].ToString(),
                        dr["au_fname"].ToString(),
                        dr["phone"].ToString(),
                        dr["address"].ToString(),
                        dr["city"].ToString(),
                        dr["state"].ToString(),
                        dr["zip"].ToString()
                        );
                    // Adiciona o autor lido à lista
                    aListAuthors.Add(aAuthor);
                }

            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();
            return aListAuthors;
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.Authors obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("DELETE FROM Authors WHERE au_id = @au_id", conn);
            cmd.Parameters.AddWithValue("@au_id", obj.au_id);
            // Executa Comando
            cmd.ExecuteNonQuery();
        }
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Authors obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("INSERT INTO Authors (au_id, au_lname, au_fname, phone, address, city, state, zip) VALUES(@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip)", conn);
            cmd.Parameters.AddWithValue("@au_id", obj.au_id);
            cmd.Parameters.AddWithValue("@au_lname", obj.au_name);
            cmd.Parameters.AddWithValue("@au_fname", obj.au_fname);
            cmd.Parameters.AddWithValue("@phone", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
            cmd.Parameters.AddWithValue("@state", obj.state);
            cmd.Parameters.AddWithValue("@au_fname", obj.zip);
            // Executa Comando
            cmd.ExecuteNonQuery();
        }
        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.Authors obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("UPDATE Authors SET au_lname = @au_lname, au_fname = @au_fname, phone = @phone, address = @address, city = @city, state = @state, zip = @zip WHERE au_id = @au_id", conn);
            cmd.Parameters.AddWithValue("@au_id", obj.au_id);
            cmd.Parameters.AddWithValue("@au_lname", obj.au_name);
            cmd.Parameters.AddWithValue("@au_fname", obj.au_fname);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@address", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
            cmd.Parameters.AddWithValue("@state", obj.state);
            cmd.Parameters.AddWithValue("@zip", obj.zip);
            // Executa Comando
            cmd.ExecuteNonQuery();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Authors> Select(string au_id)
        {
            // Variavel para armazenar um autor
            Modelo.Authors aAuthors;
            // Cria Lista Vazia
            List<Modelo.Authors> aListAuthors = new List<Modelo.Authors>();
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();
            // define SQL do comando
            cmd.CommandText = "Select * from Authors Where au_id = @au_id";
            cmd.Parameters.AddWithValue("@au_id", au_id);
            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();
            // Le nome do autor do resultado e apresenta no segundo rótulo
            if (dr.HasRows)
            {
                while (dr.Read()) // Le o proximo registro
                {
                    // Cria objeto com dados lidos do banco de dados
                    aAuthors = new Modelo.Authors(
                        dr["au_id"].ToString(),
                        dr["au_lname"].ToString(),
                        dr["au_fname"].ToString(),
                        dr["phone"].ToString(),
                        dr["address"].ToString(),
                        dr["city"].ToString(),
                        dr["state"].ToString(),
                        dr["zip"].ToString()
                        );
                    // Adiciona o livro lido à lista
                    aListAuthors.Add(aAuthors);
                }
            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();
            return aListAuthors;
        }
    }
}