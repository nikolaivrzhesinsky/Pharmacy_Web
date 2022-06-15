<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <br>
                <h1 style="text-align: center">Discount products</h1>
                <form method="get" action="/products">
                    <div class="form-row justify-content-center">
                        <#--            <div class="form-group col-md-2">-->
                        <#--                <label for="searchCity">Город</label>-->
                        <#--                <select id="searchCity" class="form-control">-->
                        <#--                    <option value="">Город не выбран</option>-->
                        <#--                    <option value="Москва">Москва</option>-->
                        <#--                    <option value="Красноярск">Красноярск</option>-->
                        <#--                    <option value="Казань">Казань</option>-->
                        <#--                </select>-->


                        <#--            </div>-->

                        <div class="form-group col-md-12">
                            <label for="searchCity">Search for City</label>
                            <input type="text" name="searchCity" <#if searchCity??>value="${searchCity}" </#if> class="form-control"
                                   id="searchCity">
                        </div>

                        <div class="form-group col-md-12">
                            <label for="searchWord">Search for topic</label>
                            <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                                   id="searchWord">
                        </div>
                        <button style="padding: 15px 45px;" type="submit" class="btn btn-dark">Найти</button>
                    </div>
                </form>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
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