using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Muhaddis.Models.Models
{
    public class Analytics
    {
        public int Id { get; set; }
        public int TodayVisitors { get; set; }
        public int ThisWeekVisitors { get; set; }
        public int ThisMonthVisitors { get; set; }
        public int TotalVisitors { get; set; }
    }
}
