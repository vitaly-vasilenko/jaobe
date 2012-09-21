using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using JAOBlogEngine.Models;
namespace JAOBlogEngine.Controllers
{
    [ValidateInput(false)]
    public class PostController : Controller
    {
        //
        // GET: /Post/

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Post()
        {
            JAOBlogEngine.Views.Shared.JAOBEDataContext db = new JAOBlogEngine.Views.Shared.JAOBEDataContext();
            ViewData["Title"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault());
            ViewData["Time"] = HttpUtility.HtmlDecode(((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString());
            ViewData["Detail"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault().ToString());
            return View();
        }

        public ActionResult NewPost()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult UserPost()
        {
            JAOBlogEngine.Views.Shared.JAOBEDataContext db = new JAOBlogEngine.Views.Shared.JAOBEDataContext();
            ViewData["Title"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault());
            ViewData["Time"] = HttpUtility.HtmlDecode(((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString());
            ViewData["Detail"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault().ToString());
            return View();
        }

        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult EditPost(GetModel _getpost)
        {
            JAOBlogEngine.Views.Shared.JAOBEDataContext db = new JAOBlogEngine.Views.Shared.JAOBEDataContext();
            _getpost.Id = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.ID).FirstOrDefault();
            _getpost._User = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.UserId).FirstOrDefault().ToString();
            _getpost.Time = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault().ToString();
            _getpost.Title = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault().ToString();
            _getpost.Announce = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Announce).FirstOrDefault().ToString();
            _getpost.Detail = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault().ToString();
            return View(_getpost);
        }

        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Post)]
        public ViewResult EditPost(PostModel _sendpost)
        {
            JAOBlogEngine.Views.Shared.JAOBEDataContext db = new JAOBlogEngine.Views.Shared.JAOBEDataContext();
            var Base = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID).Single();
            Base.Time = DateTime.Now;

            Base.Title = _sendpost.Title;
            Base.Announce = _sendpost.Announce;
            Base.Detail = _sendpost.Detail;
            db.SubmitChanges();
            return View("../Home/Index");
        }

    }
}
