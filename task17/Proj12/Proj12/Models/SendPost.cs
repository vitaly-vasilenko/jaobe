using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AjaxControlToolkit;
using AjaxControlToolkit.HTMLEditor;
namespace Proj12.Models
{
    public class SendPost : Controller
    {
        //
        // GET: /UserPost/
         public string PostIdTextBox { get; set; }
         public string UserIdTextBox { get; set; }
         public string DetailText { get; set; }
         public string AnnounceTextBox { get; set; }
         public string TitleTextBox { get; set; }

        public ActionResult EditPost()
        {
            return View();
        }

    }
}
