<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>Blog</h1>
	</div>
	<%published_posts.each {content ->%>
		<a href="${content.uri}"><h1>${content.title}</h1></a>
		<p>${content.date.format("dd MMMM yyyy")}</p>
		<p>${content.body}</p>
		<br/>
		<script><% /*TODO: currently this is inlinded because content.uri doesn't pass to the incldued template. Make it work.*/ %>
			var idcomments_acct = '${config.apikey_intensedebate}';
			var idcomments_post_id = "${config.site_host}/${content.uri}";
			var idcomments_post_url = idcomments_post_id;
			</script>
			<script type="text/javascript" src="http://www.intensedebate.com/js/genericLinkWrapperV2.js"></script>
  	<%}%>
	
	<hr />
	
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<%include "footer.gsp"%>