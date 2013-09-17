define ["backbone"], (Backbone) ->
  ForumRouter = Backbone.Router.extend(
    routes:
      "": "topics"
      "!/": "topics"
  )
  initialize = ->
    Backbone.history.start();
  initialize: initialize