<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<SpeakerRating.Models.Speaker>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/Scripts/jquery-1.4.1.min.js"></script>    
    <script type="text/javascript" src="/Scripts/lib/star-rating/jquery.MetaData.js"></script>
    <script type="text/javascript" src="/Scripts/lib/star-rating/jquery.rating.js"></script>
    <style type="text/css">
        label
        {
            font-weight:bold;
        }
        .event-title 
        {
            font-size: 18px;
            font-weight: bold;
        }
        .speaker-engagement 
        {
            margin-bottom:5px;
        }
        .speaker 
        {
            clear:both;
        }
    </style>
    <link href="/Scripts/lib/star-rating/jquery.rating.css" type="text/css" rel="Stylesheet" />
</head>
<body>
     <%=Html.DisplayForModel() %>
     <script type="text/javascript">
         $(function () {
             $('.auto-submit-star').rating({
                 callback: function (value, link) {
                     // 'this' is the hidden form element holding the current value
                     // 'value' is the value selected
                     // 'element' points to the link element that received the click.                     
                     //alert("The value selected was '" + value + "'\n\nWith this callback function I can automatically submit the form with this code:\nthis.form.submit();");

                     // To submit the form automatically:
                     //this.form.submit();

                     // To submit the form via ajax:
                     //$(this.form).ajaxSubmit();
                 }
             });
         });
  </script>

</body>
</html>
