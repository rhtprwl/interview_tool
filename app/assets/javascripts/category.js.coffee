# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<<<<<<< HEAD
$ ->
$(document).on 'click', '#countries_select', (evt) ->
$.ajax 'update_cities',
type: 'GET'
dataType: 'script'
data: {
country_id: $("#countries_select option:selected").val()
}
error: (jqXHR, textStatus, errorThrown) ->
console.log("AJAX Error: #{textStatus}")
success: (data, textStatus, jqXHR) ->
console.log("Dynamic country select OK!")
=======
>>>>>>> 6f97f5a109f1ab2f4cc56e37b3428b6856b87d30
