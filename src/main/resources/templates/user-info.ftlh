<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h3>Detail information about user ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>

<h4>User ${user.name} items</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} uah. | <a href="/product/${product.id}">More...</a> </p>
    </div>
    <#else>
    <h3>Items not exist</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>