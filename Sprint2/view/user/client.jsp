<%@ page import="model.user.Gender" %>
<%@ page import="model.url.URL" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="<%=URL.baseUrl("assets/css/bootstrap.min.css") %>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>

<body>
    <div class="container w-50 my-5 shadow p-5 rounded-3">
        <h1 class="text-center">Login</h1>
        <form action="<%=URL.baseUrl("user/check.do") %>" method="post" class="my-4" id="form">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" data-parsley-required="true" name="email">
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" data-parsley-required="true" name="password">
            </div>
            <h2 class="text-danger"><%=(request.getAttribute("error") != null) ? request.getAttribute("error") : "" %></h2>
            <button type="submit" class="btn btn-primary">Log in</button>
        </form>
    </div>
</body>

</html>