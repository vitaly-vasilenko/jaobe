using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JAOBlogEngine.Controllers
{
    public class UserOptController : Controller
    {
        //
        // GET: /UserOpt/

        public ActionResult UserOpt()
        {
            return View();
        }

        public ActionResult BlogOpt()
        {
            return View();
        }

        public ActionResult HomeUser()
        {
            return View();
        }
    }
}
