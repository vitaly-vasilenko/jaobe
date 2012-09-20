using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JAOBlogEngine.Controllers
{
    public class PostController : Controller
    {
        //
        // GET: /Post/

        public ActionResult Post()
        {
            return View();
        }

        public ActionResult NewPost()
        {
            return View();
        }

        public ActionResult UserPost()
        {
            return View();
        }

    }
}
