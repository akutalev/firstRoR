define ['jquery', 'underscore', 'backbone', 'collections/topics', 'text!templates/topics.html', 'views/topic', 'models/topic'],
  ($, _, Backbone, TopicsCollection, topicsListTemplate, TopicView, TopicModel) ->
    Backbone.View.extend
      el: $("#topics")
      template: _.template(topicsListTemplate)
#      events:
#        'click .create-topic': 'createTopic'
      model: TopicModel
      initialize: ->
        @$el.html(@template)
        @collection = new TopicsCollection()
        @listenTo(@collection, 'add', @addOne);
        @collection.fetch()

      render: -> $('#topics').html(topicsListTemplate)

      addOne: (topic) ->
        view = new TopicView({model: topic})
        @$el.find('tbody').append(view.render().el)

#      createTopic: ->
#        topic = new TopicModel()
#        topic.save
#          title: $("#new-topic-title").val(),
#          success: (topic) => @collection.add(topic)
