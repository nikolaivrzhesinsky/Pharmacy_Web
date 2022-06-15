<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <h1 style="text-align: center">${product.title} </h1>
                <p>Ваш код подтверждения - ${purchase.activationCode}</p>
                <p>Сохраните код до получения товара.</p>
            </div>
        </div>
    </div>
</@t.template>