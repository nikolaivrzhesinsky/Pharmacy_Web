<#import "blocks/template.ftlh" as t>
<@t.template user>

    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <br>
                <h1 style="text-align: center">Информация о пользователе</h1>
                <div style="text-align: center">
                    <img src="/static/images/6025638060.jpg"
                         style="border:2px solid black; border-radius: 20px" height="60">
                    <br>
                    <br>
                    Balance: <b>${user.balance}</b>
                </div>
            </div>
        </div>
    </div>


</@t.template>