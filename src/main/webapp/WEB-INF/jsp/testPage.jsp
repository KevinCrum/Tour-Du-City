<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <label for="autocomplete">Enter some text here</label>
        <input id="autocomplete" name="autocomplete" />
        <script type="text/javascript">
            $(document).ready(function() {
                $("#autocomplete").autocomplete({
                    source: 'json.jsp',
                    minLength: 2

                });                
            });
        </script>
    </body>
</html>

<%
   // Returns all employees (active and terminated) as json.
   response.setContentType("application/json");
%>