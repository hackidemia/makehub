# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $(document).on 'click', '.add_fields', (e) ->
    time = new Date().getTime()
    regexp = new RegExp($(@).data('id'), 'g')
    $(@).before($(@).data('fields').replace(regexp, time))
    e.preventDefault()
