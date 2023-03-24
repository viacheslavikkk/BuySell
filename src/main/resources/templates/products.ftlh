<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<H1>BUYSELL</H1><hr>
<H4>Items</H4>
<form action="/" method="get">
    Find by name: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} uah. | <a href="/product/${product.id}">More...</a> </p>
    </div>
</#list><hr>
<h3>Create a new item</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Name of item: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Author: <input type="text" name="author"/><br><br>
    First photo: <input type="file" name="file1"/><br><br>
    Second photo: <input type="file" name="file2"/><br><br>
    Third photo: <input type="file" name="file3"/><br><br>

    <input type="submit" value="Add item">
</form>
</body>
</html>