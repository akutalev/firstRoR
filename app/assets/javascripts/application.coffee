define [], () ->
  require.config
    paths:        
      backbone:  "lib/backbone"
      underscore: "lib/underscore"
      jquery: "lib/jquery"
      router: "backbone/routers/router"
    shim:
      'underscore':
        exports : '_'
      'backbone': 
         deps: ["underscore", "jquery"],
         exports: "Backbone"

  require ["jquery", "backbone", "router"], ($, Backbone, Router) ->
    Router.initialize()