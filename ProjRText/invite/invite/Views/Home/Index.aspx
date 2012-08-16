<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="HTMLEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>
            Index
        </title>
    </head>
    <body>
    <script>

    </script>
        <script type="text/JavaScript">
            function putToTextBox() 
            {     
                var editorControl = $get("Editor1").control;
                var content = editorControl.get_content();  
                document.getElementById("Text").value = content;
            }
        </script> 

        <form id="form1" runat="server">
            <% using (Html.BeginForm())
            { %>     
                   <textarea id="Text" cols="20" name="Text" rows="2" style="visibility: hidden"></textarea>
            <HTMLEditor:Editor ID="Editor1" runat="server" 
                Content="&lt;p style=&quot;margin: 0px; text-align: center; &quot;&gt;&lt;span style=&quot;font-weight: bold; vertical-align: super; &quot;&gt;В Web.Config&lt;/span&gt;&lt;span style=&quot;font-weight: bold; &quot;&gt; добавил &lt;span style=&quot;vertical-align: sub; &quot;&gt;[ValidateInput(false)]&lt;/span&gt;, т.к &lt;span style=&quot;font-style: italic; &quot;&gt;ошибка &lt;/span&gt;&lt;font size=&quot;3&quot;&gt;&lt;span style=&quot;font-style: italic; &quot;&gt;валидации&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt; &lt;p style=&quot;margin: 0px; text-align: left; &quot;&gt;Пока работает через костыль.&lt;br /&gt; &lt;/p&gt;" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"/>
            <input type="button" onclick="putToTextBox();" value="Получить содержимое HTMLEditor"/>
            <input type="submit" value="Отправить контент" />
            <% } %>
     
        </form>
    </body>
</html>
