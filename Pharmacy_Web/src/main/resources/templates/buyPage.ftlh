<#import "blocks/template.ftlh" as t>
<@t.template user>

    <img width = "200" height = "160" src="/images/${product.previewImageId}">
    <div class="card-body">
        <h5 class="card-title">${product.title}</h5>
        <p class="card-text">${product.price} ₽</p>
    </div>
    <div style="text-align: right">
        <img src="/static/images/6025638060.jpg"
             style="border:2px solid black; border-radius: 20px" height="60">
        <br>
        <br>
        Balance: <b>${user.balance}</b>
    </div>
    <form action="/confirm payment/${product.id}" method="get">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" style="width: 20%" class="btn btn-dark">
            Buy
        </button>
    </form>
</@t.template>