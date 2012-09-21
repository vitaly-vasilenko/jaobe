using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Profile;
using System.Web.Routing;
using System.Web.Security;
using JAOBlogEngine.Models;

namespace JAOBlogEngine.Controllers
{
    [HandleError]
    public class UserController : Controller
    {

        public ActionResult HomeUser()
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            return View(profile);
        }

        public ActionResult HomeUser()
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            return View(profile);
        }

        [HttpPost]
        public ActionResult UserOpt(FormCollection collection, HttpPostedFileBase image)
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            profile = new ProfileModel(User.Identity.Name);
            UpdateModel(profile, collection);
            profile.Save();
            return RedirectToAction("UserOpt");
        }



    }

}