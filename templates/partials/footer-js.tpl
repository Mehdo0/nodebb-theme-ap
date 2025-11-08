{{{each scripts}}}
<script type="text/javascript" src="{scripts.src}"></script>
{{{end}}}

<script>
	window.addEventListener('DOMContentLoaded', function() {
		require(['forum/footer']);
	});
</script>

<div widget-area="footer" class="widget-area">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>