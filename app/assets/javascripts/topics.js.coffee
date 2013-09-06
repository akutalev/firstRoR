# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  form = ->
    $.ajax(url: "/topics/new", method: "GET").done (data) ->
      $.dialog
        maxWidth  : 800,
        maxHeight : 600,
        fitToView : false,
        width : '70%',
        height : '70%',
        autoSize : false,
        closeClick : false,
        openEffect : 'none',
        closeEffect : 'none',
        html : data

  $('.js-create-new').click ->
    form()



