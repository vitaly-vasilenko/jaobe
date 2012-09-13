using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace Proj12.Models
{
    [ValidateInput(false)]
    public class IndexModel : Controller
    {
        public string Id { get; set; }
        public string Time { get; set; }
        public string Title { get; set; }
        public string Announce { get; set; }
        public ActionResult Index()
        {
            
            return View();
        }

    }
}
