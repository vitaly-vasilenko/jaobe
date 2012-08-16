using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace invite.Models
{


    public class GuestResponse : Controller
    {
        public string Text { get; set; }
        public ActionResult Index()

        {
            return View();
        }

    }
}
