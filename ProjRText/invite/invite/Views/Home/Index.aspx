<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>
            Index
        </title>
    </head>
    <body>

    <form id="form1" runat="server">
        <% using (Html.BeginForm(null, null, FormMethod.Post, new { id="Form"}))   
        { %>     
            <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true" CombineScripts="false"></ajaxToolkit:ToolkitScriptManager>
            <asp:TextBox
                ID="Text"
                TextMode="MultiLine"
                Columns="60"
                Rows="8"
                runat="server" Height="194px" Width="640px" />
            <ajaxToolkit:HtmlEditorExtender
                ID="htmlEditorExtender1" 
                TargetControlID="Text" 
                EnableSanitization="false"
                runat="server" > 
            <Toolbar>


                <ajaxToolkit:Bold />
                <ajaxToolkit:Italic />
                <ajaxToolkit:Underline />

                <ajaxToolkit:HorizontalSeparator />
                
                <ajaxToolkit:JustifyLeft />
                <ajaxToolkit:JustifyCenter />
                <ajaxToolkit:JustifyRight />
                <ajaxToolkit:JustifyFull />
                <ajaxToolkit:HorizontalSeparator />

                <ajaxToolkit:Undo />
                <ajaxToolkit:Redo />
                <ajaxToolkit:RemoveFormat />
                <ajaxToolkit:HorizontalSeparator />

                <ajaxToolkit:CreateLink />
                <ajaxToolkit:UnLink />
                <ajaxToolkit:HorizontalSeparator />

                <ajaxToolkit:InsertOrderedList />
                <ajaxToolkit:InsertUnorderedList />
                <ajaxToolkit:InsertImage />
            </Toolbar> 
            </ajaxToolkit:HtmlEditorExtender>
            <p></p>
            <input type="submit" value="Отправить контент" />
         <% } %>
    </form>
    </body>
</html>
