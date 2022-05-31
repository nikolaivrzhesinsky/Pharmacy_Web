<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Информация о пользователе</h1>
    <hr>
    <div style="text-align: right">
        <img src="/static/images/6025638060.jpg"
             style="border:2px solid black; border-radius: 20px" height="60">
        <br>
        <br>
        Balance: <b>${user.balance}</b>
    </div>



</@t.template>