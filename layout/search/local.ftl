<div class="searchbox ins-search">
    <div class="searchbox-container ins-search-container">
        <div class="searchbox-input-wrapper">
            <form method="get" action="/search">
                <input type="text" class="searchbox-input ins-search-input" name="keyword" placeholder="请输入关键字"/>
            </form>
            <span class="searchbox-close ins-close ins-selectable" onclick="closeSearchPanel()"><i class="fas fa-times"></i></span>
        </div>
        <div class="searchbox-result-wrapper ins-section-wrapper">
            <div class="ins-section-container">
                <#--                <section class="ins-section">-->
                <#--                    <header class="ins-section-header">最新文章</header>-->
                <#--                    <@postTag method="latest" top="5">-->
                <#--                        <#list posts as post>-->
                <#--                            <a href="${post.fullPath!}">-->
                <#--                                <div class="ins-selectable ins-search-item">-->
                <#--                                    <header><i class="fa fa-file"></i><span class="ins-title">${post.title!}</span>-->
                <#--                                    </header>-->
                <#--                                    <p class="ins-search-preview">${post.summary!}</p>-->
                <#--                                </div>-->
                <#--                            </a>-->
                <#--                        </#list>-->
                <#--                    </@postTag>-->
                <#--                </section>-->
                <section class="ins-section">
                    <header class="ins-section-header">分类</header>
                    <div class="level">
                        <div class="columns is-multiline" style="padding: 1.5em 2em">
                            <@categoryTag method="list">
                                <#list categories as category>
                                    <a href="${category.fullPath!}">
                                        <div class="ant-tag ant-tag-purple is-primary is-focused" style="margin-bottom: 8px;"> ${category.name!}</div>
<#--                                        <div class="ins-selectable ins-search-item">-->
<#--                                            <header>-->
<#--                                                <i class="fa fa-folder"></i>-->
<#--                                                <span class="ins-title">${category.name!}</span>-->
<#--                                                <span class="ins-slug">${category.slug!}</span>-->
<#--                                            </header>-->
<#--                                        </div>-->
                                    </a>
                                </#list>
                            </@categoryTag>
                        </div>
                    </div>

                </section>
                <section class="ins-section">
                    <header class="ins-section-header">标签</header>
                    <div class="level">
                        <div class="columns is-multiline" style="padding: 1.5em 2em">
                            <@tagTag method="list">
                                <#list tags as tag>
                                    <a href="${tag.fullPath!}">
                                        <div class="ant-tag ant-tag-green" style="margin-bottom: 8px;"> ${tag.name!}</div>

<#--                                        <div class="ins-selectable ins-search-item">-->
<#--                                            <header>-->
<#--                                                <i class="fa fa-tag"></i>-->
<#--                                                <span class="ins-title">${tag.name!}</span>-->
<#--                                                <span class="ins-slug">${tag.slugName!}</span>-->
<#--                                            </header>-->
<#--                                        </div>-->
                                    </a>
                                </#list>
                            </@tagTag>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
<script>
    function openSearchPanel() {
        $(".ins-search").addClass("show");
    }

    function closeSearchPanel() {
        $(".ins-search").removeClass("show");
    }
</script>
