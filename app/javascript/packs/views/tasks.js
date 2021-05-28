// on page load, set #tasks container to sortable
document.addEventListener("turbolinks:load", () => {
    $("#tasks").sortable();
})