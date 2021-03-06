define ['jquery', 'bootstrap','underscore', 'backbone', 'text!templates/topic.html', 'views/editTopic'],
  ($, Bootstrap, _, Backbone, topicTemplate, EditTopicView) ->
    Backbone.View.extend
      tagName: 'tr'
      template: _.template(topicTemplate)
      events:
        'click .js-remove-topic': 'clear'
        'click .js-edit-topic': 'edit'

      initialize: ->
        @listenTo(@model, 'change', @render)
        @listenTo(@model, 'destroy', @remove)

      render: ->
        @$el.html(@template(@model.toJSON()))
        @

      clear: ->
        @view.clear
        @unbind
        @model.remove

      edit: ->
        @view = new EditTopicView(model: @model)
        @view.render()