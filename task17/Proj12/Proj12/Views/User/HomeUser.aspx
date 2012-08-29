<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script language="C#" runat="server">
    void Page_Load(Object semder, EventArgs e) 
    {
        Proj12.JAOBEDataContext db = new Proj12.JAOBEDataContext();
        var Base = from Announce in db.Posts select Announce;
        RepeaterDataList.DataSource = Base;
        RepeaterDataList.DataBind();
    }
    </script>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<form id="form1" runat="server">
 <div id="wrapper">

  <div id="container">

    <div id="content">
      <div id="text">
      <br />
      <hr>
      <p></p>
      <asp:Repeater ID="RepeaterDataList" runat="server">
        <ItemTemplate>
        <div>
            <%# DataBinder.Eval(Container.DataItem, "Time")%> <br />
            <p></p>
            <a href="../Post/Post?post=<%# Eval("ID") %>" ><img src="../../Content/picture<%# Eval("ID") %>.jpg" /><br /><h3><%# DataBinder.Eval(Container.DataItem, "Title")%></h3><br /></a>
            <%# DataBinder.Eval(Container.DataItem, "Announce")%><br/> 
            <a href="../Post/UserPost?post=<%# Eval("ID") %>" >Детальная страница поста</a><br />
            <a href="../Post/EditPost?post=<%# Eval("ID") %>" >Редактировать пост</a><br />
        </div>
        <hr>
        </ItemTemplate>  
      </asp:Repeater>

      </div>
      </div>

        <div id="left">
        <a href="../Post/NewPost">Новый пост</a><br />
        <a href="../Home/Index">Главная для гостя</a><br />
        <a href="../User/User">Профиль</a><br />
	</div>
    <div class="clear"></div>
  </div>
    </form>
 
</asp:Content>