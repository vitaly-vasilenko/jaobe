using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace Proj12.Controllers
{
    [HandleError]
    public class UserController:Controller
    {
        public ViewResult HomeUser()
        {       
            return View();
        }
    }
}