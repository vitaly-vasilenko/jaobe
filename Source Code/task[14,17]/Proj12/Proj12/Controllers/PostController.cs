using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;
using Proj12.Models;

namespace Proj12.Controllers
{
    [ValidateInput(false)]
    public class PostController : Controller
    {
        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult Post()
        {
            Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
            ViewData["Title"]=HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault());
            ViewData["Time"]=HttpUtility.HtmlDecode(((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString());
            ViewData["Detail"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault().ToString());
            return View();
        }

        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Post(PostCommentModel postcomment)
        {
            Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
            int _Id =(from ID in db.Comments select ID.ID).Count()+1;
            db.SubmitChanges();
            return View();
        }

        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult UserPost()
        {
            Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
            ViewData["Title"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Title).FirstOrDefault());
            ViewData["Time"] = HttpUtility.HtmlDecode(((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Time).FirstOrDefault()).ToString());
            ViewData["Detail"] = HttpUtility.HtmlDecode((from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID.Detail).FirstOrDefault().ToString());
            return View();
        }


        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ActionResult NewPost()
        {
            return View();
        }

        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Get)]
        public ViewResult EditPost(GetModel _getpost)
        {
            Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
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
            Proj12.Views.Shared.JAOBEDataContext db = new Proj12.Views.Shared.JAOBEDataContext();
            var Base = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID).Single();
            Base.Time = DateTime.Now;
            Base.Title = _sendpost.Title;
            Base.Announce = _sendpost.Announce;
            Base.Detail =   _sendpost.Detail;
            db.SubmitChanges();
            return View("../Home/Index");
        }
    }
}
