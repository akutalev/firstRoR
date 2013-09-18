define(["backbone", "models/topic", "views/topics"], (Backbone, TopicModel, TopicList) ->
  ForumRouter = Backbone.Router.extend(
    routes:
      "": "topics"
      "!/": "topics"
  )
  initialize = ->
    forum_router = new ForumRouter
    forum_router.on "route:topics", -> new TopicList().render()
    Backbone.history.start()
  initialize: initialize
)