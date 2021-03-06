// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../stylesheets/application"

// require extra JS
require("jquery")
require("jquery-ui")
require("bootstrap")
require("./views/tasks")

// allow for jQuery usage in views
global.$ = jQuery;

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// auto-load widgets if necessary
// document.addEventListener("turbolinks:load", function () {

// })
