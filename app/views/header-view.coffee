View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  autoRender: yes
  className: 'header'
  container: '#header-container'
  id: 'header'
  template: template
  initialize: ->
    super
    @subscribeEvent 'somethingHover', @processHover

  processHover: (e)->
    console.log "HeaderView#processHover"
