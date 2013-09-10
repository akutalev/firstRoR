$ ->
  create_topic = ->
    $.ajax
      url: '/topics/new',
      type: "GET",
      dataType: 'html',
      success: (data) ->
        $(data).modal()
      error: (a, b, errorMessage) ->
        alert(errorMessage);
    return false

  edit_topic = (id) ->
    $.ajax
      url: '/topics/' + id + '/edit',
      type: 'GET',
      dataType: 'html',
      success: (data) ->
        $(data).modal()
      error: (a, b, errorMessage) ->
        alert(errorMessage);
    return false

  $('.js-create-new').on click: ->
    create_topic()

  $(document).on('click', '.js-edit-topic', () ->
    edit_topic($(this).attr('id'))
  )

  $(document).on('click', '.js-delete-topic',() ->
    id = $(this).attr('id')
    message = 'Are you sure?'
    if (confirm(message))
      $.ajax
        url: '/topics/' + id,
        type: 'DELETE',
        success: (data) ->
          $(document).find('.js-list-topic').replaceWith($(data).find('.js-list-topic'))
    else
      return false;
  )



