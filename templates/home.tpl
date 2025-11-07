<!-- IMPORT partials/header.tpl -->

<div class="ap-layout">
    <main class="ap-layout-main">
        <!-- Breadcrumb -->
        <div class="ap-breadcrumb">
            <a href="/">Home</a>
            <span class="separator">/</span>
            <span class="current">Latest Discussions</span>
        </div>

        <!-- Categories Section -->
        <section class="ap-section">
            <div class="ap-section-header">
                <h2>Categories</h2>
            </div>
            <div class="ap-section-content">
                <!-- IMPORT partials/categories/list.tpl -->
            </div>
        </section>

        <!-- Recent Topics Section -->
        <section class="ap-section">
            <div class="ap-section-header">
                <h2>Recent Discussions</h2>
            </div>
            <div class="ap-section-content">
                <ul class="ap-thread-list">
                    <!-- BEGIN topics -->
                    <li class="ap-thread-list-item">
                        <div class="ap-thread-list-item-header">
                            <a href="{config.relative_path}/user/{topics.user.userslug}">
                                <!-- IF topics.user.picture -->
                                <img class="avatar" src="{topics.user.picture}" alt="{topics.user.username}" />
                                <!-- ELSE -->
                                <div class="avatar">{topics.user.username}</div>
                                <!-- ENDIF topics.user.picture -->
                            </a>
                            <a href="{config.relative_path}/topic/{topics.slug}" class="ap-thread-list-item-title">{topics.title}</a>
                        </div>
                        <div class="ap-thread-list-item-meta">
                            <a href="{config.relative_path}/category/{topics.category.slug}">{topics.category.name}</a>
                            <span>•</span>
                            <span>[[global:posted_ago, <span class="timeago" title="{topics.timestampISO}"></span>]]</span>
                            <span>•</span>
                            <span>{topics.postcount} replies</span>
                        </div>
                    </li>
                    <!-- END topics -->
                </ul>
            </div>
        </section>
    </main>

    <aside class="ap-layout-sidebar">
        <!-- Popular Topics Widget -->
        <div class="ap-widget">
            <div class="ap-widget-header">
                <h3>Popular Topics</h3>
            </div>
            <div class="ap-widget-content">
                <ul class="ap-thread-list">
                    <!-- BEGIN popular -->
                    <li class="ap-thread-list-item">
                        <a href="{config.relative_path}/topic/{popular.slug}" class="ap-thread-list-item-title">{popular.title}</a>
                        <div class="ap-thread-list-item-meta">
                            <span>{popular.viewcount} views</span>
                            <span>•</span>
                            <span>{popular.postcount} replies</span>
                        </div>
                    </li>
                    <!-- END popular -->
                </ul>
            </div>
        </div>

        <!-- Featured Category Widget -->
        <div class="ap-widget ap-widget-featured">
            <div class="ap-widget-header">
                <h3>Featured Category</h3>
            </div>
            <div class="ap-widget-content">
                <!-- IF featuredCategory -->
                <h4>{featuredCategory.name}</h4>
                <p>{featuredCategory.description}</p>
                <a href="{config.relative_path}/category/{featuredCategory.slug}" class="btn btn-primary">Browse Category</a>
                <!-- ENDIF featuredCategory -->
            </div>
        </div>
    </aside>
</div>

<!-- IMPORT partials/footer.tpl -->