<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3 text-center">
                <br>
                <h1 style="text-align: center">Личный кабинет</h1>
                <br>
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
                    <a class="btn btn-dark mb-3" style="text-align: center;"
                       href="/admin">
                        Панель администратора
                    </a>
                </#if>
                <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 170px; display: block; margin: 0 auto;"
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

                <a class="btn btn-dark mb-3" style="text-align: center;"
                   href="/user/balance">
                    Balance
                </a><br>

                <a class="btn btn-dark mb-3" style="text-align: center;"
                   href="/my-purchases">
                    Purchases
                </a><br>

                <#if user.isAdmin()>
                <a class="btn btn-dark mb-3" style="text-align: center;"
                   href="/my/products">
                     Товары
                </a>
                </#if>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button type="submit" style="text-align: center;" class="btn btn-danger mb-2">
                        Выйти из аккаунта
                    </button>
                </form>
            </div>
            </div>
        </div>
    </div>
</@t.template>