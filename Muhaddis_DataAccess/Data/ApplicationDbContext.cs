using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Muhaddis.Models.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.DataAccess.Data
{
    public class ApplicationDbContext : IApplicationDbContext
    {
        public string Constr {get; set;}
        public IConfiguration _configuration;
        public SqlConnection con;

        public ApplicationDbContext(IConfiguration configuration)
        {
            _configuration = configuration;
            Constr = _configuration.GetConnectionString("DefaultConnection");
        }

        public List<BooksConfig> GetBookConfig()
        {
            List<BooksConfig> books = new List<BooksConfig>();
            try
            {
                using( con = new SqlConnection(Constr))
                {
                    con.Open();
                    var cmd = new SqlCommand("usp_loadBooksConfig", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlDataReader rdr = cmd.ExecuteReader();
                    
                    while (rdr.Read())
                    {
                        BooksConfig bookConfig = new BooksConfig();
                        bookConfig.Id = Convert.ToInt64(rdr["Id"]);
                        bookConfig.Type = rdr["Type"].ToString();
                        bookConfig.Name = rdr["Name"].ToString();
                        bookConfig.Value = rdr["Value"].ToString();
                        bookConfig.UrduSrNo = rdr["UrduSrNo"].ToString();
                        bookConfig.BookID = Convert.ToInt64(rdr["BookID"]);
                        bookConfig.BookName = rdr["BookName"].ToString();

                        books.Add(bookConfig);
                    }
                }
                return books.ToList();

            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
        }

        // Add other CRUD operations as needed
    }


    public interface IApplicationDbContext
    {
        public List<BooksConfig> GetBookConfig();
    }

}
