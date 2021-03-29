<#include "layout/layout.ftl">
<#include "layout/common/article.ftl">
<@layout title="搜索：${keyword} - ${blog_title!}" canonical="${context!}/search?keyword=${keyword}">
    <#list posts.content as post>
        <@article post,'index','null',true />
    </#list>
    <#if posts.getTotalPages() gt 0>
        <div class="card card-transparent">
            <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword!}">
                    <div class="pagination-previous<#if pagination.hasPrev><#else > is-invisible is-hidden-mobile</#if>">
                        <a class="is-flex-grow has-text-black-ter" href="${pagination.prevPageFullPath!}">上一页</a>
                    </div>
                    <div class="pagination-next<#if pagination.hasNext><#else > is-invisible is-hidden-mobile</#if>">
                        <a class="is-flex-grow has-text-black-ter" href="${pagination.nextPageFullPath!}">下一页</a>
                    </div>
                    <ul class="pagination-list is-hidden-mobile">
                        <#list pagination.rainbowPages as number>
                            <#if number.isCurrent>
                                <li><a class="pagination-link is-current" href="${number.fullPath!}">${number.page!}</a></li>
                            <#else>
                                <li><a class="pagination-link has-text-black-ter" href="${number.fullPath!}">${number.page!}</a></li>
                            </#if>
                        </#list>
                    </ul>
                </@paginationTag>
            </nav>
        </div>
        <#else>
       <div class="level">
            <div class="level-item has-text-centered">
                没有你要找的内容『${keyword}』
            </div>
        </div>
    </#if>
</@layout>
