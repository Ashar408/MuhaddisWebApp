using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Muhaddis.DataAccess.Data;
using Muhaddis.Models.Models;
using MuhaddisWebApp.Models;
using System.Diagnostics;

namespace MuhaddisWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IApplicationDbContext _applicationDbContext;
        

        public HomeController(ILogger<HomeController> logger, IApplicationDbContext applicationDbContext)
        {
            _logger = logger;
            _applicationDbContext = applicationDbContext;

        }

        public IActionResult Index()
        {
            IEnumerable<SelectListItem> SBTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo +"--"+ u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SBTraqeemList = SBTraqeemList;
            IEnumerable<SelectListItem> SBTranslateList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo +"--"+ u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SBTranslateList = SBTranslateList;
            IEnumerable<SelectListItem> SBHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(1) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SBHukamList = SBHukamList;
            
            IEnumerable<SelectListItem> SMTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SMTraqeemList = SMTraqeemList;
            IEnumerable<SelectListItem> SMTranslateList = _applicationDbContext.GetBookConfig().Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMTranslateList = SMTranslateList;
            IEnumerable<SelectListItem> SMHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(2) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SMHukamList = SMHukamList;
            
            IEnumerable<SelectListItem> SADTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SADTraqeemList = SADTraqeemList;
            IEnumerable<SelectListItem> SADTranslateList = _applicationDbContext.GetBookConfig().Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SADTranslateList = SADTranslateList;
            IEnumerable<SelectListItem> SADHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(3) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value     
               }
               );
            ViewBag.SADHukamList = SADHukamList;
            
            IEnumerable<SelectListItem> JTTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.JTTraqeemList = JTTraqeemList;
            IEnumerable<SelectListItem> JTTranslateList = _applicationDbContext.GetBookConfig().Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTTranslateList = JTTranslateList;
            IEnumerable<SelectListItem> JTHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(4) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.JTHukamList = JTHukamList;
            
            IEnumerable<SelectListItem> SNTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SNTraqeemList = SNTraqeemList;
            IEnumerable<SelectListItem> SNTranslateList = _applicationDbContext.GetBookConfig().Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNTranslateList = SNTranslateList;
            IEnumerable<SelectListItem> SNHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(5) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SNHukamList = SNHukamList;
            
            IEnumerable<SelectListItem> SIMTraqeemList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Tarqeem")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value

               }
               );
            ViewBag.SIMTraqeemList = SIMTraqeemList;
            IEnumerable<SelectListItem> SIMTranslateList = _applicationDbContext.GetBookConfig().Where(item=>!string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Translation")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMTranslateList = SIMTranslateList;
            IEnumerable<SelectListItem> SIMHukamList = _applicationDbContext.GetBookConfig().Where(item => !string.IsNullOrEmpty(item.Name) && item.BookID.Equals(6) && item.Type.Contains("Hukam")).Select(
               u => new SelectListItem
               {
                   Text = u.UrduSrNo + "--" + u.Name,
                   Value = u.Value
               }
               );
            ViewBag.SIMHukamList = SIMHukamList;

            List<BooksConfig> booksConfigs = new List<BooksConfig>();
            booksConfigs = _applicationDbContext.GetBookConfig().ToList();
            return View(booksConfigs);
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
