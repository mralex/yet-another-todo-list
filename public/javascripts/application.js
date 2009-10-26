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
		$("#todo_description").val(todo_description.getContent());
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;
	});
	
	// $(".delete").each(function() {
	// 	$(this).click(function () {
	// 		var id = $(this).parents()[1].id;
	// 		var url = "/todos/destroy/" + id;
	// 		
	// 		if (confirm("Are you sure?")) {
	// 			$.post(url, null, null, "script");				
	// 		}
	// 		return false;
	// 	});
	// });
});