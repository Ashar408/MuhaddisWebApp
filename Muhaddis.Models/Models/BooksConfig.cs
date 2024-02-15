using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.Models.Models
{
    public class BooksConfig
    {
        public BigInteger Id { get; set; }
        public string? Type { get; set; }
        public int SrNo { get; set; }
        public string? TarNo { get; set; }
        public string? UrduSrNo { get; set; }
        public string? BookName { get; set; }
        public BigInteger BookID { get; set; }
        public string? Value { get; set; }
        public string? Name { get; set; }
        public string? HashiyaValue { get; set; }
        public string? UrduName { get; set; }
        public string? Ikhtisar { get; set; }
    }
}
