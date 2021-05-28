// on page load, set #tasks container to sortable
document.addEventListener("turbolinks:load", () => {
	$("#tasks").sortable().on("sortupdate", function (e, ui) {
		// get new index of moved task, set "position" value in the form
		$(this).children().find("[name*=position]").each(function (i, input) {
			$(input).val(i)
		});
	})
})

