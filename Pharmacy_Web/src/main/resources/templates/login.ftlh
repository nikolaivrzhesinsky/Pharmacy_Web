<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <br>
                <h1 style="text-align: center">Авторизация</h1>
                <br>
                <form action="/login " method="post">
                    <div class="form-group">
                        <label for="email">Электронная почта</label>
                        <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
                        <div id="email" class="invalid-feedback">
                            Неверныя электронная почта
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Пароль</label>
                        <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
                        <div id="password" class="invalid-feedback">
                            Неверный пароль
                        </div>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <div class="form-group text-center">
                        <button type="submit" style="padding: .375rem 1.75rem;" class="btn btn-dark">Войти</button>
                    </div>
                </form>
                <br>
                <h2>Нет аккаунта Pharmacy web? <a href="/registration">Зарегистрируйся!</a></h2>
            </div>
        </div>
    </div>
</@t.template>