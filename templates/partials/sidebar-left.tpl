<!-- AP Theme: Navigation Data Provider -->
<div style="display: none;" id="ap-navigation-data">
    {{{each navigation}}}
    <div class="ap-nav-item" 
         data-route="{navigation.route}" 
         data-title="{navigation.title}" 
         data-icon="{navigation.iconClass}"
         data-active="{{{ if navigation.active }}}true{{{ else }}}false{{{ end }}}"
         data-id="{navigation.id}">
    </div>
    {{{ end }}}
</div>

<script>
// Make navigation data available to our JavaScript
window.apNavigationData = [
    {{{each navigation}}}
    {
        route: "{navigation.route}",
        title: "{navigation.title}",
        iconClass: "{navigation.iconClass}",
        active: {{{ if navigation.active }}}true{{{ else }}}false{{{ end }}},
        id: "{navigation.id}"
    }{{{ if !@last }}},{{{ end }}}
    {{{ end }}}
];
</script>