<div class="categories">
    <!-- BEGIN categories -->
    <div class="ap-category-card">
        <div class="ap-category-card-header">
            <!-- IF categories.icon -->
            <div class="ap-category-icon">
                <i class="fa {categories.icon}"></i>
            </div>
            <!-- ENDIF categories.icon -->
            <h3 class="ap-category-title">
                <a href="{config.relative_path}/category/{categories.slug}">{categories.name}</a>
            </h3>
        </div>
        
        <!-- IF categories.description -->
        <div class="ap-category-description">
            {categories.description}
        </div>
        <!-- ENDIF categories.description -->
        
        <div class="ap-category-stats">
            <div class="ap-stat">
                <span class="ap-stat-label">Topics</span>
                <span class="ap-stat-value">{categories.totalTopicCount}</span>
            </div>
            <div class="ap-stat">
                <span class="ap-stat-label">Posts</span>
                <span class="ap-stat-value">{categories.totalPostCount}</span>
            </div>
        </div>
        
        <!-- IF categories.children.length -->
        <div class="ap-subcategories">
            <span class="ap-subcategories-label">Subcategories:</span>
            <div class="ap-subcategories-list">
                <!-- BEGIN categories.children -->
                <a href="{config.relative_path}/category/{categories.children.slug}" class="ap-subcategory">
                    {categories.children.name}
                </a>
                <!-- END categories.children -->
            </div>
        </div>
        <!-- ENDIF categories.children.length -->
    </div>
    <!-- END categories -->
</div>

<style>
.categories {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
}

.ap-category-card {
    background: $white;
    border: 1px solid $border-color;
    padding: 1.5rem;
    transition: box-shadow 0.2s ease;

    &:hover {
        box-shadow: 0 4px 12px rgba($black, 0.1);
    }
}

.ap-category-card-header {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 1rem;
}

.ap-category-icon {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: $ap-timber-green;
    color: $white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.2rem;
}

.ap-category-title {
    margin: 0;
    font-family: $font-family-heading;
    font-size: 1.2rem;
    font-weight: $font-weight-bold;

    a {
        color: $ap-timber-green;
        text-decoration: none;

        &:hover {
            color: $ap-pink-gold;
        }
    }
}

.ap-category-description {
    color: $gray-600;
    font-size: 0.95rem;
    margin-bottom: 1rem;
}

.ap-category-stats {
    display: flex;
    gap: 1.5rem;
    padding: 1rem 0;
    border-top: 1px solid $border-color;
    margin-bottom: 1rem;
}

.ap-stat {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.ap-stat-label {
    font-size: 0.85rem;
    color: $gray-500;
    text-transform: uppercase;
    letter-spacing: 0.05em;
}

.ap-stat-value {
    font-family: $font-family-heading;
    font-weight: $font-weight-bold;
    color: $ap-timber-green;
}

.ap-subcategories {
    font-size: 0.9rem;
}

.ap-subcategories-label {
    color: $gray-600;
    margin-right: 0.5rem;
}

.ap-subcategories-list {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin-top: 0.5rem;
}

.ap-subcategory {
    color: $ap-timber-green;
    text-decoration: none;
    padding: 0.25rem 0.5rem;
    background: $off-white;
    border-radius: 3px;
    font-size: 0.85rem;

    &:hover {
        color: $ap-pink-gold;
        background: lighten($ap-pink-gold, 35%);
    }
}</style>