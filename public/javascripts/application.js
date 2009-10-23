// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})


$(document).ready(function () {
	
	$(".todo input").each(function() {
		$(this).click(function() {
			// get todo item id
			var id = $(this).parents()[1].id;
			var url = "/todos/update/" + id;
			var done = (this.checked) ? "true" : "false";
			$.post(url, { "todo[done]": done }, null, "script");
		});
	});
	
	$("#new_todo").submit(function (){
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;
	});
});