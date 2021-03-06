define ['jquery', 'bootstrap','underscore', 'backbone', 'text!templates/edit_topic.html',],
($, Bootstrap, _, Backbone, editTopicTemplate) ->
  Backbone.View.extend
    tagName: 'tr'
    template: _.template(editTopicTemplate)
    events:
      'click .js-update-topic': 'update'
      'keypress .js-topic-edit': 'updateOnEnter'
      'click .js-close-button': 'clear'
      'click .close': 'clear'

    initialize: ->

    render: (model) ->
      (@$el.html(@template(@model.toJSON())))
      @$el.modal('show')
      @

    clear: ->
      @unbind
      @remove

    update: ->
      @model.save(text: $(document).find('.js-topic-edit').val())
      @clear

    updateOnEnter: (e) -> @update() if e.keyCode == 13
