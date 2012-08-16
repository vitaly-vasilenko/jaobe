using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using invite.Models;
using AjaxControlToolkit;
using AjaxControlToolkit.HTMLEditor;


namespace invite.Controllers
{
    public class HomeController : Controller
    {
        [ValidateInput(false)]
        [AcceptVerbs (HttpVerbs.Get)]
        public ViewResult Index()
        {
            return View();
        }
        [ValidateInput(false)]
      [AcceptVerbs(HttpVerbs.Post)]
        public ViewResult Index(GuestResponse guestresponse)
        {

            return View("PostSend", guestresponse);
        }

    }
}
