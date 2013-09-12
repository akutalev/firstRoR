#define ['jquery'], ($) ->
#$ ->
#alert "The app has started with requirejs. yay!!"

require.config ->
  baseUrl: '/javascript',
  paths:
    'topic': '/backbone/models/topic.coffee',
    'topics': '/backbone/collections/topics.cofee'

  shim:
    backbone: 'lib/backbone.js'
