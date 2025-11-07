# AP Theme for NodeBB

This repository contains all of the preparatory work for a theme based off of the [Harmony theme](https://github.com/NodeBB/nodebb-theme-harmony). If you'd like to base your theme off another supported theme instead, switch to the appropriate branch:

* [Lavender](https://github.com/NodeBB/nodebb-theme-lavender)

Fork it to create your own theme based off of it!

### Some things to change

* Update metadata in `package.json`, `plugin.json`, and `theme.json` (author, repository, description) to match your project details.
* Replace the placeholder description in the admin navigation (`lib/theme.js`) with wording that makes sense for your community.
* Swap the Harmony assets with your own styling in `scss/` and `public/`.

### When you're done...

Be sure to add some other metadata to the `package.json`, like this:

``` json
"author": {
    "name": "Your Name",
    "email": "Your Email",
    "url": "Your website"
},
"repository": {
    "type": "git",
    "url": "https://github.com/{your-username}/{your-repository}"
},
"bugs": {
    "url": "https://github.com/{your-username}/{your-repository}/issues"
}
```

Also, add a screenshot! Take a picture of your theme, and save it as "screenshot.png" in the root of your theme folder, then add this to `theme.json`:

``` json
"screenshot": "screenshot.png"
```

### Credits

Material theme by [pichalite](https://github.com/pichalite).