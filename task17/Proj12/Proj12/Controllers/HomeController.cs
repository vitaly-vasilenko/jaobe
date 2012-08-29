﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proj12.Models;

namespace Proj12.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Главная";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }


    }
}
