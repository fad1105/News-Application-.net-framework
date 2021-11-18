using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NewsAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Online_News_System.Controllers
{
    [Authorize]
    public class NewsController : Controller
    {
        public IActionResult Index(int id=6)
        {

            ViewBag.Text = (NewsAPI.Constants.Categories)id;
            NewsAPI.Constants.Categories categories = (NewsAPI.Constants.Categories)id;
            var newsApiClient = new NewsApiClient("917e9360a6564822be55e860dea1f5f5");
            var articlesResponse = new NewsAPI.Models.ArticlesResult();
            if (id == 6)
            {
                articlesResponse = newsApiClient.GetTopHeadlines(new NewsAPI.Models.TopHeadlinesRequest
                {

                    Country = NewsAPI.Constants.Countries.IN,
                    PageSize = 10
                });
                ViewBag.HeadIn = true;
                ViewBag.isSep = false;
            }
            else { 
                articlesResponse = newsApiClient.GetTopHeadlines(new NewsAPI.Models.TopHeadlinesRequest
                {

                    Country = NewsAPI.Constants.Countries.IN,
                    Category = categories,
                    PageSize = 10
                });
            ViewBag.isSep = true;
                ViewBag.HeadIn = false;
            }
            //return View();
            return View("~/Views/Shared/PrintNews.cshtml", articlesResponse);
        }
    }
}
