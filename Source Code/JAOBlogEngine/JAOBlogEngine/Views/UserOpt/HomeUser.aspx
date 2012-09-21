<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.Linq" %>
<%@ Import Namespace="System.Data.Linq.Mapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	HomeUser
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
    Страница анонсов
    <h2></h2>
    <div id="wrapper">
        <div id="container">
            <div id="content">
                <div id="text">
                <%
                    JAOBlogEngine.Views.Shared.JAOBEDataContext db = new JAOBlogEngine.Views.Shared.JAOBEDataContext();
                    var IdTable = from Announce in db.Posts select Announce.ID;
                    int PostOnPage = 5; //Добавить в настройки
                    int CurrentPage;
                    if (Request.QueryString["page"] != null)
                    {
                        CurrentPage = int.Parse(Request.QueryString["page"]);
                    }
                    else
                    {
                        CurrentPage = 0;
                    }
                    form1.FindControl("textDb").Controls.Add(new HyperLink { NavigateUrl = "~/Post/NewPost", ImageUrl ="../../Content/add_item.gif" });
                    form1.FindControl("textDb").Controls.Add(new LiteralControl("<br><br>"));
                    for (int CurrentID = ((CurrentPage * PostOnPage) + 1); (CurrentID <= (CurrentPage * PostOnPage + PostOnPage)) & (CurrentID <= IdTable.Count()); CurrentID++)
                    {
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<hr>"));
                      form1.FindControl("textDb").Controls.Add(new HyperLink { NavigateUrl = "~/Post/EditPost?post=" + Convert.ToString(CurrentID), ImageUrl = "../../Content/kedit_6179.png"});
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                      form1.FindControl("textDb").Controls.Add(new Label { Text = ((from Announce in db.Posts where Announce.ID==CurrentID select Announce.Time).FirstOrDefault()).ToString()});
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                      form1.FindControl("textDb").Controls.Add(new Image {ImageUrl="../../Content/picture--240.jpg"});
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                      form1.FindControl("textDb").Controls.Add(new HyperLink { Text = (from Announce in db.Posts where Announce.ID == CurrentID select Announce.Title).FirstOrDefault(), NavigateUrl = "~/Post/UserPost?post=" + Convert.ToString(CurrentID) });
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                      form1.FindControl("textDb").Controls.Add(new Label { Text = (from Announce in db.Posts where Announce.ID == CurrentID select Announce.Announce).FirstOrDefault() });
                   }
                      form1.FindControl("textDb").Controls.Add(new LiteralControl("<br>"));
                      for (int i = 0; i <= ((int)Math.Ceiling((decimal)IdTable.Count()/PostOnPage)-1); i++)
                        {
                            form1.FindControl("textPg").Controls.Add(new HyperLink { Text = i.ToString() + "   ", NavigateUrl = "~/UserOpt/HomeUser?page=" + i }); 
                        }
                     if (CurrentPage < ((int)Math.Ceiling((decimal)IdTable.Count()/PostOnPage)-1))
                     {
                         form1.FindControl("textPg").Controls.Add(new HyperLink { Text = "   Следующая", NavigateUrl = "~/UserOpt/HomeUser?page=" + (CurrentPage + 1) }); 
                     }   
                  %>
                  <div id="textDb" runat="server" style="text-align: justify"/> 
                  <br>   
                  </p>  
                  <div id="textPg" runat="server"  style="text-align: center"/>    
                </div>
            </div>

    <div id="left">
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../UserOpt/HomeUser">Главная для админа</a><br />
        <a href="../UserOpt/UserOpt">Профиль</a><br />
		<a href="../UserOpt/BlogOpt">Настройки</a></br>
	</div>

    <div id="right">
        <p align="center">
			<img src="../../Content/10b002a7e95b026c55b25e3f697eef6d.jpg" alt="avatar" height=80 width=80 /><br />
		
        Владимир Поповкин <br />
		</p>
		<p>
		Личный комментарии<br/>
        555555<br />
		test@mail.ru<br/>
		Адрес<br/>
		</p>
		
	</div>

    <div class="clear"></div>
  </div>
</div>   
</form>
</asp:Content>
