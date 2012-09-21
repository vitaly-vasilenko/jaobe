using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JAOBlogEngine.Models
{
    [ValidateInput(false)]
    public class PostModel : Controller
    {
        public string Time { get; set; }
        public string Title { get; set; }
        public string Announce { get; set; }
        public string Detail { get; set; }
        public ActionResult EditPost()
        {
            return View();
        }
    }

    [ValidateInput(false)]
    public class GetModel : Controller
    {
        public string Time { get; set; }
        public int Id { get; set; }
        public string _User { get; set; }
        public string Title { get; set; }
        public string Announce { get; set; }
        public string Detail { get; set; }
        public ActionResult EditPost()
        {
            return View();
        }
    }
 }
