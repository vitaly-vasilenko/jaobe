using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proj12.Models;
using AjaxControlToolkit;
using AjaxControlToolkit.HTMLEditor;
namespace Proj12.Controllers
{
    public class PostController : Controller
    {
        //
        // GET: /Post/

        public ActionResult Post()
        {

            return View();
        }

        public ActionResult UserPost()
        {
            return View();
        }

        public ActionResult NewPost()
        {
            return View();
        }


        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult EditPost()
        {
            return View();
        }
        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Post)]

        public ViewResult EditPost(SendPost sendpost)
        {
            return View("SavePost", sendpost);
        }

    }
}
