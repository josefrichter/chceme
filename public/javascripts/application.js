// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  setTimeout(hideFlashMessages, 3000);
});

function hideFlashMessages() {
  $('p#notice, p#warning, p#error').fadeOut(2000)
}