<<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.Linq" %>
<%@ Import Namespace="System.Data.Linq.Mapping" %>

<script language="C#" runat="server">
 void Page_Load(Object semder, EventArgs e) 
    {
        Proj12.JAOBEDataContext db = new Proj12.JAOBEDataContext();
        var Base = (from ID in db.Posts where ID.ID == Convert.ToInt32(Request.QueryString["post"]) select ID).Single();
        //Base.UserId = Model.UserIdTextBox;
        Base.Time = DateTime.Now;
        Base.Title=Model.TitleTextBox;
        Base.Announce=Model.AnnounceTextBox;
        Base.Detail = HttpUtility.HtmlDecode(Model.DetailText);
        db.SubmitChanges();
    }
    </script><html xmlns="http://www.w3.org/1999/xhtml" ><<html xmlns="http://www.w3.org/1999/xhtml" >


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PostSend</title>
</head>
    <body>
    <form id="form" runat="server">
    Пост изменен.
    <a href="../User/HomeUser">Главная</a><br />
    </form>
    </body>
</html>