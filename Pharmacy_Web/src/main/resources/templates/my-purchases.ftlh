<#import "blocks/template.ftlh" as t>
<@t.template user>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <br>
                <h1 style="text-align: center">Shopping list</h1>
                <br>
                <table class="table table-hover table-dark">
                    <tr>
                        <th scope="col">Продукт</th>
                        <th scope="col">Дата оформления</th>
                        <th scope="col">Статус</th>
                        <th scope="col">Код подтверждениия</th>

                    </tr>
                    <#list purchases as purchase>
                        <tr>
                            <th><a href="/product/${purchase.product.getId()}" >  ${purchase.product.getTitle()}</a> </th>
                            <th>${purchase.dateOfPurchase}</th>
                            <th><#if purchase.status>active<#else>done</#if></th>
                            <th>${purchase.activationCode}</th>

                        </tr>
                    <#else>
                        <h3>Пользователей нет</h3>
                    </#list>
                </table>
            </div>
        </div>
    </div>
</@t.template>