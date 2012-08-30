using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proj12.Models;

namespace Proj12.Controllers
{
    [HandleError]
    public class UserController : Controller
    {

        public ActionResult Index()
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            return View(profile);
        }
        
        public ActionResult Edit()
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            return View(profile);
        }

        [HttpPost]
        public ActionResult Edit(FormCollection collection, HttpPostedFileBase image)
        {
            ProfileModel profile = new ProfileModel(User.Identity.Name);
            profile = new ProfileModel(User.Identity.Name);
            UpdateModel(profile, collection);
            profile.Save();
            return RedirectToAction("Index");
        }

       

    }

}