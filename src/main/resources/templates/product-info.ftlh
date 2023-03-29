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
<b>Author: </b><a href="/user/${product.user.id}"> ${product.user.name} </a><br>
<b>Phone number: </b> ${product.user.phoneNumber}<br>
</body>
</html>