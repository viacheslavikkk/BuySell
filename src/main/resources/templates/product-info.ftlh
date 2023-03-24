<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<H1>BUYSELL</H1>
<hr>
<H4>More about item</H4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"><br><br>
</#list>
<b>Name of item: </b> ${product.title}<br>
<b>Description: </b> ${product.description}<br>
<b>Price: </b> ${product.price}<br>
<b>City: </b> ${product.city}<br>
<b>Author: </b> ${product.author}<br>
<h3>Create a new item</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete item">
</form>
</body>
</html>