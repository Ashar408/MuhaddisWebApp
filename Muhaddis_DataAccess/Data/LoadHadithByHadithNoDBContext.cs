using Microsoft.Extensions.Configuration;
using Muhaddis.Models.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.DataAccess.Data
{
    public class LoadHadithByHadithNoDBContext
    {
        public string Constr { get; set; }
        public IConfiguration _configuration;
        public SqlConnection con;

        public LoadHadithByHadithNoDBContext(IConfiguration configuration)
        {
            _configuration = configuration;
            Constr = _configuration.GetConnectionString("DefaultConnection");
        }
        public List<GetHadithByHadithNo> GetHadithByHadithNo(int BookId, float HadithNo, string DefaultTarqeem, string DefaultTranslation, string DefaultHukam, string DefaultHashia)
        {
            List<GetHadithByHadithNo> getHadithsDetail = new List<GetHadithByHadithNo>();
            try
            {
                using (con = new SqlConnection(Constr))
                {
                    con.Open();
                    var cmd = new SqlCommand("usp_LoadHadithDataByHadithNoNewTBG", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Book_Id", SqlDbType.Int).Value = BookId;
                    cmd.Parameters.AddWithValue("@Hadith_No", SqlDbType.Float).Value = HadithNo;
                    cmd.Parameters.AddWithValue("@DefaulTarqeem", SqlDbType.NVarChar).Value = DefaultTarqeem;
                    cmd.Parameters.AddWithValue("@DefaultTranslation", SqlDbType.NVarChar).Value = DefaultTranslation;
                    cmd.Parameters.AddWithValue("@DefaultHukam", SqlDbType.NVarChar).Value = DefaultHukam;
                    cmd.Parameters.AddWithValue("@DefaultHashiya", SqlDbType.NVarChar).Value = DefaultHashia;
                    cmd.ExecuteNonQuery();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        GetHadithByHadithNo getDefaultHadith = new GetHadithByHadithNo();

                        getDefaultHadith.HadithBookName = rdr["HadithBookName"].ToString();
                        getDefaultHadith.TarNo = rdr["TarNo"].ToString();
                        getDefaultHadith.Name = rdr["Name"].ToString();
                        getDefaultHadith.UrduName = rdr["UrduName"].ToString();
                       getDefaultHadith.HadithBookNameUrdu = rdr["HadithBookNameUrdu"].ToString();
                        getDefaultHadith.kitaabNameUrdu = rdr["kitaabNameUrdu"].ToString();
                        getDefaultHadith.kitaabNameArabic = rdr["kitaabNameArabic"].ToString();
                        getDefaultHadith.BaabNameArabic = rdr["BaabNameArabic"].ToString();
                        getDefaultHadith.BaabNameUrdu = rdr["BaabNameUrdu"].ToString();
                        getDefaultHadith.TarjumatulBaabUrdu = rdr["TarjumatulBaabUrdu"].ToString();
                        getDefaultHadith.TarjumatulBaabArabic = rdr["TarjumatulBaabArabic"].ToString();
                        getDefaultHadith.HadeesNumber = Convert.ToInt32(rdr["HadeesNumber"]);
                        getDefaultHadith.BaabID = Convert.ToInt32(rdr["BaabID"]);
                        getDefaultHadith.BookID = Convert.ToInt32(rdr["BookID"]);
                        getDefaultHadith.HadithArabicText = rdr["HadithArabicText"].ToString();
                        getDefaultHadith.HadithUrduText = rdr["HadithUrduText"].ToString();
                        getDefaultHadith.HadithHashiaText = rdr["HadithHashiaText"].ToString();
                        getDefaultHadith.HadithTypeAtraaf = rdr["HadithTypeAtraaf"].ToString();
                        getDefaultHadith.HadithTypeRawaat = rdr["HadithTypeRawaat"].ToString();
                        getDefaultHadith.HadithTypeQFT = rdr["HadithTypeQFT"].ToString();
                        getDefaultHadith.HadithHukamAjmali = rdr["HadithHukamAjmali"].ToString();
                        getDefaultHadith.HadithHukamTafseeli = rdr["HadithHukamTafseeli"].ToString();
                        getDefaultHadith.HadithMouzuhArabic = rdr["HadithMouzuhArabic"].ToString();
                        getDefaultHadith.HadithMouzuhUrdu = rdr["HadithMouzuhUrdu"].ToString();
                        getDefaultHadith.HadithHukamTafseeliArabic = rdr["HadithHukamTafseeliArabic"].ToString();
                        getDefaultHadith.HadeesNumberTOne = Convert.ToInt32(rdr["HadeesNumberTOne"]);
                        getDefaultHadith.HadeesNumberTTwo = Convert.ToInt32(rdr["HadeesNumberTTwo"]);
                        getDefaultHadith.HadeesNumberTThree = Convert.ToInt32(rdr["HadeesNumberTThree"]);
                        getDefaultHadith.HadeesNumberTFour = Convert.ToInt32(rdr["HadeesNumberTFour"]);
                        getDefaultHadith.HadeesNumberTFive = Convert.ToInt32(rdr["HadeesNumberTFive"]);
                        getDefaultHadith.HadeesNumberTSix = Convert.ToInt32(rdr["HadeesNumberTSix"]);
                        getDefaultHadith.HadeesNumberTSeven = Convert.ToInt32(rdr["HadeesNumberTSeven"]);
                        getDefaultHadith.HadeesNumberTEight = Convert.ToInt32(rdr["HadeesNumberTEight"]);
                        getDefaultHadith.HadeesNumberTNine = Convert.ToInt32(rdr["HadeesNumberTNine"]);
                        getDefaultHadith.HadithUrduTextOne = rdr["HadithUrduTextOne"].ToString();
                        getDefaultHadith.HadithUrduTextTwo = rdr["HadithUrduTextTwo"].ToString();
                        getDefaultHadith.HadithUrduTextThree = rdr["HadithUrduTextThree"].ToString();
                        getDefaultHadith.HadithUrduTextFour = rdr["HadithUrduTextFour"].ToString();
                        getDefaultHadith.HadithUrduTextFive = rdr["HadithUrduTextFive"].ToString();
                        getDefaultHadith.HadithUrduTextSix = rdr["HadithUrduTextSix"].ToString();
                        getDefaultHadith.HadithUrduTextSeven = rdr["HadithUrduTextSeven"].ToString();
                        getDefaultHadith.HadithUrduTextEight = rdr["HadithUrduTextEight"].ToString();
                        getDefaultHadith.HadithUrduTextNine = rdr["HadithUrduTextNine"].ToString();
                        getDefaultHadith.HadithUrduTextTen = rdr["HadithUrduTextTen"].ToString();
                        getDefaultHadith.HadithHukamAjmaliOne = rdr["HadithHukamAjmaliOne"].ToString();
                        getDefaultHadith.HadithHukamAjmaliTwo = rdr["HadithHukamAjmaliTwo"].ToString();
                        getDefaultHadith.HadithHukamAjmaliThree = rdr["HadithHukamAjmaliThree"].ToString();
                        getDefaultHadith.HadithHukamAjmaliFour = rdr["HadithHukamAjmaliFour"].ToString();
                        getDefaultHadith.HadithHukamAjmaliFive = rdr["HadithHukamAjmaliFive"].ToString();
                        getDefaultHadith.HadithHukamAjmaliSix = rdr["HadithHukamAjmaliSix"].ToString();
                        getDefaultHadith.HadithHukamAjmaliSeven = rdr["HadithHukamAjmaliSeven"].ToString();
                        getDefaultHadith.HadithHukamAjmaliEight = rdr["HadithHukamAjmaliEight"].ToString();
                        getDefaultHadith.HadithHukamAjmaliNine = rdr["HadithHukamAjmaliNine"].ToString();
                        getDefaultHadith.HadithHukamAjmaliTen = rdr["HadithHukamAjmaliTen"].ToString();
                        getDefaultHadith.HadithHashiaTextOne = rdr["HadithHashiaTextOne"].ToString();
                        getDefaultHadith.HadithHashiaTextTwo = rdr["HadithHashiaTextTwo"].ToString();
                        getDefaultHadith.HadithHashiaTextThree = rdr["HadithHashiaTextThree"].ToString();
                        getDefaultHadith.HadithHashiaTextFour = rdr["HadithHashiaTextFour"].ToString();
                        getDefaultHadith.HadithHashiaTextFive = rdr["HadithHashiaTextFive"].ToString();
                        getDefaultHadith.HadithHashiaTextSix = rdr["HadithHashiaTextSix"].ToString();
                        getDefaultHadith.HadithHashiaTextSeven = rdr["HadithHashiaTextSeven"].ToString();
                        getDefaultHadith.HadithHashiaTextEight = rdr["HadithHashiaTextEight"].ToString();
                        getDefaultHadith.HadithHashiaTextNine = rdr["HadithHashiaTextNine"].ToString();
                        getDefaultHadith.HadithHashiaTextTen = rdr["HadithHashiaTextTen"].ToString();
                        getDefaultHadith.KitaabTamheedArabic = rdr["KitaabTamheedArabic"].ToString();
                        getDefaultHadith.KitaabTamheedUrdu = rdr["KitaabTamheedUrdu"].ToString();
                        getDefaultHadith.AbwaabTamheedArabic = rdr["AbwaabTamheedArabic"].ToString();
                        getDefaultHadith.AbwaabTamheedUrdu = rdr["AbwaabTamheedUrdu"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduOne = rdr["TarjumatulBaabUrduOne"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduTwo = rdr["TarjumatulBaabUrduTwo"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduThree = rdr["TarjumatulBaabUrduThree"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduFour = rdr["TarjumatulBaabUrduFour"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduFive = rdr["TarjumatulBaabUrduFive"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduSix = rdr["TarjumatulBaabUrduSix"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduSeven = rdr["TarjumatulBaabUrduSeven"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduEight = rdr["TarjumatulBaabUrduEight"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduNine = rdr["TarjumatulBaabUrduNine"].ToString();
                        getDefaultHadith.TarjumatulBaabUrduTen = rdr["TarjumatulBaabUrduTen"].ToString();
                        getDefaultHadith.HadithBookNameEng = rdr["HadithBookNameEng"].ToString();
                        getDefaultHadith.KitaabNameEng = rdr["KitaabNameEng"].ToString();
                        getDefaultHadith.BaabNameEng = rdr["BaabNameEng"].ToString();


                        getHadithsDetail.Add(getDefaultHadith);
                    }
                }
                return getHadithsDetail.ToList();

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

