<div class="ap-chat-page-container" data-widget-area="popularPageChat">
    {{{each widgets.popularPageChat}}}
    {widgets.content}
    {{{end}}}
</div>

<style>
    /*
      This CSS makes the chat widget fill the entire page content area.
      It assumes the NodeBB Shoutbox plugin widget is being used.
    */
    
    /* 1. Make our main container fill all available vertical space */
    .ap-chat-page-container {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        /* Use viewport height minus a guess for header/navs */
        min-height: 75vh;
    }

    /* 2. Hide the widget's title bar (e.g., "Shoutbox") */
    .ap-chat-page-container .widget-header {
        display: none;
    }

    /* 3. Make the shoutbox component itself fill our container */
    .ap-chat-page-container [component="shoutbox"] {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        height: 100%;
        min-height: 75vh; /* Match the parent container */
    }

    /* 4. Make the message list inside the shoutbox grow and scroll */
    .ap-chat-page-container [component="shoutbox/messages"] {
        flex-grow: 1;
        overflow-y: auto;
    }
</style>