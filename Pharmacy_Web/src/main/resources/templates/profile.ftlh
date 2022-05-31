<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <#if user.isAdmin()>
            <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
               href="/admin">
                Панель администратора
            </a><br>
        </#if>
        <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
           data-toggle="collapse" href="#collapseExample" role="button"
           aria-expanded="true" aria-controls="collapseExample">
            Изменить данные
        </a>
        <div class="collapse mb-3" id="collapseExample" style="">
            <form action="/user/update" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Имя пользователя</label>
                    <input type="text" class="form-control" required id="name" name="name">
                </div>

                <div class="form-group">
                    <label for="phoneNumber">Номер телефона</label>
                    <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
                </div>

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                <button type="submit" style="width: 100%" class="btn btn-dark">Изменить</button>
            </form>
        </div>

        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/user/balance">
            Balance
        </a><br>

        <#if user.isAdmin()>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/my/products">
             Товары
        </a>
        </#if>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>