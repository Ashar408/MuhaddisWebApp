using Microsoft.Extensions.Configuration;
using Muhaddis.Models.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.DataAccess.Data
{
    public class UpdateImageDbContext
    {
        public string Constr { get; set; }
        public IConfiguration _configuration;
        public SqlConnection con;

        public UpdateImageDbContext(IConfiguration configuration)
        {
            _configuration = configuration;
            Constr = _configuration.GetConnectionString("DefaultConnection");
        }

        public List<Update> GetUpdates()
        {
            List<Update> Updates = new List<Update>();
            try
            {
                using (con = new SqlConnection(Constr))
                {
                    con.Open();
                    string query = "SELECT * FROM Updates";
                    var cmd = new SqlCommand(query, con);
                    cmd.CommandType = CommandType.Text;
                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        Update update = new Update();
                        update.Id = Convert.ToInt32(rdr["Id"]);
                        update.FileName = rdr["FileName"].ToString();


                        Updates.Add(update);
                    }
                }
                return Updates.ToList();

            }
            catch (Exception ex)
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
}
