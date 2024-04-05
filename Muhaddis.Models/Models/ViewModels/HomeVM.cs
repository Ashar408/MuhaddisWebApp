using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.Models.Models.ViewModels
{
    public class HomeVM
    {
        public List<Update> Update { get; set; }
        public List<GetDefaultHadith> GetDefaultHadith { get; set; }
        public List<GetHadithByHadithNo> GetDefaultHadithByHadithNo { get; set; }
        public List<BooksConfig> BooksConfigs { get; set; }
        public List<Analytics> analytics { get; set; }
    }
}
