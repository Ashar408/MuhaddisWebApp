using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Muhaddis.DataAccess.Data;
using Muhaddis.Models.Models;
using Muhaddis.Models.Models.ViewModels;
using MuhaddisWebApp.Models;
using System.Diagnostics;
using System.Net;
using System.Reflection.Metadata;
using System.Web;
using System.Xml.Linq;

namespace MuhaddisWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly BookConfigDbContext _bookConfigDbContext;
        private readonly DefaultHadithDBContext _defaultHadithDBContext;
        private readonly UpdateImageDbContext _updateImageDb;
        private readonly AnalyticsDbContext _analyticsDbContext;
        private readonly LoadHadithByHadithNoDBContext _loadHadithByHadith;
        public HomeVM homeVM { get; set; }
        public HomeController(ILogger<HomeController> logger, BookConfigDbContext bookConfigDbContext, DefaultHadithDBContext defaultHadithDBContext, UpdateImageDbContext updateImageDb, AnalyticsDbContext analyticsDbContext, LoadHadithByHadithNoDBContext loadHadithByHadith)
        {
            _logger = logger;
            _bookConfigDbContext = bookConfigDbContext;
            _defaultHadithDBContext = defaultHadithDBContext;
            _updateImageDb = updateImageDb;
            _analyticsDbContext = analyticsDbContext;
            _loadHadithByHadith = loadHadithByHadith;
        }

        public IActionResult Index()
        {
            homeVM = new HomeVM()
            {
                Update = _updateImageDb.GetUpdates().ToList(),
                GetDefaultHadith = _defaultHadithDBContext.GetDefaultHadith().ToList(),
                BooksConfigs = _bookConfigDbContext.GetBookConfig().ToList(),
                analytics = _analyticsDbContext.GetAnalytics().ToList(),

            };

            IEnumerable<SelectListItem> SBTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Tarqeem")).Select(
                              u => new SelectListItem
                              {
                                  Text = u.UrduSrNo + "--" + u.Name,
                                  Value = u.Value

                              }
                              );
                ViewBag.SBTraqeemList = SBTraqeemList;
            
           
            IEnumerable<SelectListItem> SBTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo +"--"+ u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SBTranslateList = SBTranslateList;
            IEnumerable<SelectListItem> SBHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SBHukamList = SBHukamList;
            
            IEnumerable<SelectListItem> SMTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SMTraqeemList = SMTraqeemList;
            IEnumerable<SelectListItem> SMTranslateList = homeVM.BooksConfigs.Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMTranslateList = SMTranslateList;
            IEnumerable<SelectListItem> SMHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMHukamList = SMHukamList;
            
            IEnumerable<SelectListItem> SADTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SADTraqeemList = SADTraqeemList;
            IEnumerable<SelectListItem> SADTranslateList = homeVM.BooksConfigs.Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SADTranslateList = SADTranslateList;
            IEnumerable<SelectListItem> SADHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value     
               }
               );
            ViewBag.SADHukamList = SADHukamList;
            
            IEnumerable<SelectListItem> JTTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.JTTraqeemList = JTTraqeemList;
            IEnumerable<SelectListItem> JTTranslateList = homeVM.BooksConfigs.Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTTranslateList = JTTranslateList;
            IEnumerable<SelectListItem> JTHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTHukamList = JTHukamList;
            
            IEnumerable<SelectListItem> SNTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SNTraqeemList = SNTraqeemList;
            IEnumerable<SelectListItem> SNTranslateList = homeVM.BooksConfigs.Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNTranslateList = SNTranslateList;
            IEnumerable<SelectListItem> SNHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNHukamList = SNHukamList;
            
            IEnumerable<SelectListItem> SIMTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SIMTraqeemList = SIMTraqeemList;
            IEnumerable<SelectListItem> SIMTranslateList = homeVM.BooksConfigs.Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMTranslateList = SIMTranslateList;
            IEnumerable<SelectListItem> SIMHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMHukamList = SIMHukamList;

            return View(homeVM);
        }
        public IActionResult Detail(int bookId, float hadithNo)
        {

            var Hukam = Request.Cookies["SahiBukhariHukam"];
            var Hashia = Request.Cookies["SahiBukhariHashiya"];
            var Translation = Request.Cookies["SahiBukhariTranslation"];
            var Tarqeem = Request.Cookies["SahiBukhariTarqeem"];
            homeVM = new HomeVM()
            {
                Update = _updateImageDb.GetUpdates().ToList(),
                GetDefaultHadith = _defaultHadithDBContext.GetDefaultHadith().ToList(),
                BooksConfigs = _bookConfigDbContext.GetBookConfig().ToList(),
                analytics = _analyticsDbContext.GetAnalytics().ToList(),
                GetDefaultHadithByHadithNo = _loadHadithByHadith.GetHadithByHadithNo(bookId, hadithNo, Tarqeem, Translation, Hukam, Hashia).ToList(),

            };
            IEnumerable<SelectListItem> SBTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Tarqeem")).Select(
                             u => new SelectListItem
                             {
                                 Text = u.UrduSrNo + "--" + u.Name,
                                 Value = u.Value

                             }
                             );
            ViewBag.SBTraqeemList = SBTraqeemList;


            IEnumerable<SelectListItem> SBTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SBTranslateList = SBTranslateList;
            IEnumerable<SelectListItem> SBHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SBHukamList = SBHukamList;

            IEnumerable<SelectListItem> SMTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SMTraqeemList = SMTraqeemList;
            IEnumerable<SelectListItem> SMTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMTranslateList = SMTranslateList;
            IEnumerable<SelectListItem> SMHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMHukamList = SMHukamList;

            IEnumerable<SelectListItem> SADTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SADTraqeemList = SADTraqeemList;
            IEnumerable<SelectListItem> SADTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SADTranslateList = SADTranslateList;
            IEnumerable<SelectListItem> SADHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SADHukamList = SADHukamList;

            IEnumerable<SelectListItem> JTTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.JTTraqeemList = JTTraqeemList;
            IEnumerable<SelectListItem> JTTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTTranslateList = JTTranslateList;
            IEnumerable<SelectListItem> JTHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTHukamList = JTHukamList;

            IEnumerable<SelectListItem> SNTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SNTraqeemList = SNTraqeemList;
            IEnumerable<SelectListItem> SNTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNTranslateList = SNTranslateList;
            IEnumerable<SelectListItem> SNHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNHukamList = SNHukamList;

            IEnumerable<SelectListItem> SIMTraqeemList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SIMTraqeemList = SIMTraqeemList;
            IEnumerable<SelectListItem> SIMTranslateList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMTranslateList = SIMTranslateList;
            IEnumerable<SelectListItem> SIMHukamList = homeVM.BooksConfigs.Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMHukamList = SIMHukamList;
            return View(homeVM);
        }

        [HttpGet]
        public IActionResult GetName(int BookId, string Translation, string hukam, string KitaabUrdu, string BaabUrdu, string Tarjuma)
        {
            var bookId = _defaultHadithDBContext.GetDefaultHadith().FirstOrDefault(x => x.BookID == BookId);
            var name = _bookConfigDbContext.GetBookConfig().FirstOrDefault(x =>x.BookID== BookId && x.Value == Translation)?.Name;
            return Json(new { name, bookId, hukam, Translation, KitaabUrdu, BaabUrdu, Tarjuma });
        }

        [HttpPost]
        public IActionResult GetDetail(int bookId, float hadithNo, string bookName)
        {
            var Hukam = Request.Cookies["SahiBukhariHukam"];
            var Hashia = Request.Cookies["SahiBukhariHashiya"];
            var Translation = Request.Cookies["SahiBukhariTranslation"];
            var Tarqeem = Request.Cookies["SahiBukhariTarqeem"];
            // Use bookId and hadithNo to update your database
            var detail = _loadHadithByHadith.GetHadithByHadithNo(bookId,hadithNo, Tarqeem, Translation,Hukam,Hashia);
            // Redirect to another action using GET
            return RedirectToAction("Detail", "Home", new { bookId, hadithNo });
        }

        [HttpGet]
        public IActionResult GetDetailResponse(int BookId, string KitaabUrdu, string BaabUrdu, string Translation, string Tarqeem, string hukam, float HadithNo, string Tarjuma, string Hashia)
        {
            var Details = _loadHadithByHadith.GetHadithByHadithNo(BookId,HadithNo,Tarqeem, Translation, hukam, Hashia).FirstOrDefault(x => x.BookID == BookId);
            var name = _bookConfigDbContext.GetBookConfig().FirstOrDefault(x => x.BookID == BookId && x.Value == Translation)?.Name;
            return Json(new { name, Details, Tarjuma, hukam, Translation, Hashia, KitaabUrdu, BaabUrdu });
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
