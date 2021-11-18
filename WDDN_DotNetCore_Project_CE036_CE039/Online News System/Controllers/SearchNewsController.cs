using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NewsAPI;
using NewsAPI.Constants;
using NewsAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_News_System.Controllers
{
    [Authorize]
    public class SearchNewsController : Controller
    {
        [HttpPost]
        public IActionResult Index(string Text)
        //public string Index(string Text)
        {
            ViewBag.Text = Text;
            var newsApiClient = new NewsApiClient("917e9360a6564822be55e860dea1f5f5");
            var articlesResponse = newsApiClient.GetEverything(new EverythingRequest
            {
                Q = Text,
                PageSize = 10
            });
            //Console.WriteLine(Text);
            ViewBag.isSep = false;
            ViewBag.HeadIn = false;
            return View("~/Views/Shared/PrintNews.cshtml",articlesResponse);
            //return Text;
        }
        public IActionResult SerachNewsForm()
        {
            return View();
        }
    }
}
