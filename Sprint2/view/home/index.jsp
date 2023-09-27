<%@ page import="model.client.Client" %>
<%@ page import="model.url.URL" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="<%= URL.baseUrl("assets/css/bootstrap.min.css") %>">
    <link rel="stylesheet" href="<%= URL.baseUrl("assets/css/style.css") %>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creation Examen</title>
</head>
<div class="container w-50 my-5 shadow p-5 rounded-3">
    <h3 class="text-center">Liste des clients</h3>
    <form action="<%=URL.baseUrl("user/form.do") %>" method="post" class="my-4" id="form">
        <div class="mb-3">
            <span>
                <table>
                    <% for (Client client : (Client[]) request.getAttribute("clients")) { %>
                        <tr>
                            <td class="add"><%= client.getName() %></td>
                        </tr>                
                    <% } %>
                </table>
            </span>
        </div>
        <h2 class="text-danger"><%=(request.getAttribute("error") != null) ? request.getAttribute("error") : "" %></h2>
    </form>
</div>    
</html>