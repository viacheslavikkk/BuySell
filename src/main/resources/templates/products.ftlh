<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<H1>BUYSELL</h1>
<hr>
<#if user.email??>
    <h3>Username: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Exit">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <a href="/login">Enter</a></H1>
    <hr>
</#if>
<H4>Items</H4>
<form action="/" method="get">
    Find by name: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} uah. | <a href="/product/${product.id}">More...</a></p>
    </div>
</#list>
<hr>
<#if user.email??>
    <h3>Create a new item</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name of item: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        First photo: <input type="file" name="file1"/><br><br>
        Second photo: <input type="file" name="file2"/><br><br>
        Third photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add item">
    </form>
</#if>
</body>
</html>