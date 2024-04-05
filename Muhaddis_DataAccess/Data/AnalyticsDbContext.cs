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
    public class AnalyticsDbContext
    {
        public string Constr { get; set; }
        public IConfiguration _configuration;
        public SqlConnection con;

        public AnalyticsDbContext(IConfiguration configuration)
        {
            _configuration = configuration;
            Constr = _configuration.GetConnectionString("DefaultConnection");
        }

        public List<Analytics> GetAnalytics()
        {
            List<Analytics> analytics = new List<Analytics>();
            try
            {
                using (con = new SqlConnection(Constr))
                {
                    con.Open();
                    string query = "SELECT * FROM Analytics";
                    var cmd = new SqlCommand(query, con);
                    cmd.CommandType = CommandType.Text;
                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        Analytics analytic = new Analytics();
                        analytic.Id = Convert.ToInt32(rdr["Id"]);
                        analytic.TodayVisitors = Convert.ToInt32(rdr["TodayVisitors"]);
                        analytic.ThisWeekVisitors = Convert.ToInt32(rdr["ThisWeekVisitors"]);
                        analytic.ThisMonthVisitors = Convert.ToInt32(rdr["ThisMonthVisitors"]);
                        analytic.TotalVisitors = Convert.ToInt32(rdr["TotalVisitors"]);


                        analytics.Add(analytic);
                    }
                }
                return analytics.ToList();

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
