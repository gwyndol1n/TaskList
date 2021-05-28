// on page load, set #tasks container to sortable
document.addEventListener("turbolinks:load", () => {
	$("#tasks").sortable().on("sortupdate", function (e, ui) {
		// get new index of moved task, set "position" value in the form
		const $currentTask = $(ui.item);
		const currentTaskPosition = $(this).children().index(ui.item);
		$currentTask.find("[name*=position]").val(currentTaskPosition);
	})
})

