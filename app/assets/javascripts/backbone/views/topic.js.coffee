define ['jquery', 'underscore', 'backbone', 'text!templates/topic.html'],
  ($, _, Backbone, topicTemplate) ->
    Backbone.View.extend
      tagName: 'tr'
      template: _.template(topicTemplate)
      events:
        'click .remove-topic': 'clear'
        'click .edit-topic': 'edit'
        'keypress .edit': 'updateOnEnter'
        'blur .edit': 'update'

      initialize: ->
        @listenTo(@model, 'change', @render)
        @listenTo(@model, 'destroy', @remove)

      render: ->
        @$el.html(@template(@model.toJSON()))
        @input = @$('.edit');

      clear: -> @model.destroy()

      edit: ->

      update: ->
        @model.save({title: @input.val()})
        @$el.removeClass("editing")

      updateOnEnter: (e) -> @update() if e.keyCode == 13
