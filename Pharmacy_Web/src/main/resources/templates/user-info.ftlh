<#import "blocks/template.ftlh" as t>
<@t.template userByPrincipal>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3 text-center">
                <h1 style="text-align: center">Информация о пользователе</h1>
                <hr>
                <div style="text-align: center">
                        <img src="/static/images/avatar.png"
                             style="border:2px solid black; border-radius: 20px" height="120">
                    <br>
                    <br>
                    <h2>${user.name}</h2>
                    <br>
                    Номер телефона: <b>${user.phoneNumber}</b>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="mt-4" style="text-align: center">Товары пользователя ${user.name}</h1>
                <div class="cards">
                    <#list products as product>
                        <div class="col-md-4">
                            <a href="/product/${product.id}" class="product-link">
                                <div class="card text-white my-3 product">

                                    <img src="/images/${product.previewImageId}"
                                         class="card-img-top">
                                    <div class="card-body bg-dark">
                                        <h5 class="card-title">${product.title}</h5>
                                        <p class="card-text">${product.price} ₽</p>
                                    </div>
                                    <div class="card-footer bg-dark">
                                        ${product.city}
                                    </div>
                                </div>
                            </a>
                        </div>
                    <#else>
                        <h1 style="text-align: center">Не найдено</h1>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</@t.template>