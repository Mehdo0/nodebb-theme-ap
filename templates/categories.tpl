<!-- AP Categories layout: two-column with sidebar -->
<div class="container ap-container">
  <main class="ap-main">
    <section class="ap-categories">
      {{#if categories}}
        {{#each categories}}
          <article class="ap-category-row d-flex align-items-start">
            <div class="ap-cat-icon me-3">
              {{#if this.icon}}
                <i class="{{this.icon}}" aria-hidden="true"></i>
              {{else}}
                <i class="fa fa-folder" aria-hidden="true"></i>
              {{/if}}
            </div>

            <div class="ap-cat-body flex-grow-1">
              <h3 class="ap-cat-title mb-1">
                {{#if this.link}}
                  <a href="{{this.link}}">{{this.name}}</a>
                {{else}}
                  <a href="/category/{{this.slug}}">{{this.name}}</a>
                {{/if}}
              </h3>
              {{#if this.description}}
                <div class="ap-cat-desc text-muted small">{{{this.description}}}</div>
              {{/if}}
            </div>

            <div class="ap-cat-stats text-muted small ms-3 text-end">
              <div>{{this.topics}} topics</div>
              <div>{{this.posts}} posts</div>
            </div>
          </article>
        {{/each}}
      {{else}}
        <div class="ap-no-categories text-muted">No categories found.</div>
      {{/if}}
    </section>
  </main>

  <aside class="ap-sidebar">
    {{> partials/sidebar}}
  </aside>
</div>
