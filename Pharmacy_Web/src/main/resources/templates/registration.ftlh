<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <br>
                <h1 style="text-align: center">Регистрация</h1>
                <br>
                <form action="/registration" method="post">
                    <div class="form-group">
                        <label for="name">Имя пользователя</label>
                        <input type="text" class="form-control" required id="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="email">Электронная почта</label>
                        <input type="email" class="form-control" id="email" required name="email">
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber">Номер телефона</label>
                        <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label for="password">Пароль</label>
                        <input type="password" class="form-control" id="password" required name="password">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <div class="form-group text-center">
                        <button type="submit" style="padding: .375rem 1.75rem;" class="btn btn-dark">Зарегистрироваться</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</@t.template>