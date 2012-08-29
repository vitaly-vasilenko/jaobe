using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proj12.Controllers
{
    [HandleError]
    public class UserController:Controller
    {

        public ActionResult User()
        {
            ViewData["Message"] = "Информация пользователя";

            return View();
        }

        public ActionResult HomeUser()
        {
            return View();
        }

    }
}