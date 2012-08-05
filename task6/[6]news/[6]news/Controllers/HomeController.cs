using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _6_news.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ViewResult Index()
        {

            return View();
        }
        public ViewResult Add()
        {

            return View();
        }

    }
}
