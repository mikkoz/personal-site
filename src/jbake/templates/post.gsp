<%include "header.gsp"%>
	
	<%include "menu.gsp"%>
	
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p><em>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(content.date)}</em></p>

	<p>${content.body}</p>
	
	<p>
		<%include "comments.gsp" %>
		<span id="IDCommentsPostTitle" style="display:none"></span>
		<script type='text/javascript' src='https://www.intensedebate.com/js/genericCommentWrapperV2.js'></script>
	</p>

	<hr />
	
<%include "footer.gsp"%>