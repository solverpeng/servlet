<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Servlet</title>
</head>
<body>
    <a href="helloServlet?name=test&name=test2&age=12">hello servlet</a>
    <form action="helloServlet" method="post">
        <label>
            name:<input type="text" name="name" value="test">
        </label>
        <label>
            name:<input type="text" name="name" value="test2">
        </label>
        <label>
            age:<input type="text" name="age" value="12">
        </label>
        <input type="submit" value="submit">
    </form>
</body>
</html>
