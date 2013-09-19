define [], () ->
  require.config
    paths:        
      backbone:  "lib/backbone"
      underscore: "lib/underscore"
      jquery: "lib/jquery"
      text: "lib/text"
      router: "backbone/routers/router"
      templates: "backbone/templates"
      models: "backbone/models"
      views: "backbone/views"
      collections: "backbone/collections"
      bootstrap: "lib/bootstrap.min"
    shim:
      'jquery':
         exports: '$'
      'underscore':
        exports : '_'
      'backbone': 
         deps: ["underscore", "jquery"],
         exports: "Backbone"
      'bootstrap':
        deps: ["jquery"],
        exports: '$.fn.popover'

  require ["jquery", "backbone", "router", "underscore"], ($, Backbone, Router, _) ->
    Router.initialize()