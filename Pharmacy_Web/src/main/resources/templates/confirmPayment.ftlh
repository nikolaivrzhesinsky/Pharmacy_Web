<#import "blocks/template.ftlh" as t>
<@t.template user>

    <hr>
    <p><h1 style="text-align: center">${product.title} </h1></p>
    <p>Код подтверждения</p>
    <p style="text-align: center">${purchase.activationCode}</p>
    <p>Сохраните</p>
    <hr>
</@t.template>