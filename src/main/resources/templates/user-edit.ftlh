<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<H1>BUYSELL</h1><hr>
<H3>Edit user</H3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("Checked", "")}>
                ${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</body>
</html>