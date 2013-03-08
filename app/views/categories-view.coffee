View = require 'views/base/view'
template = require 'views/templates/categories'

module.exports = class CategoriesView extends View
  autoRender: false
  container: '#page-container'
  template: template
  initialize: ->
    super
    if @model.state() isnt 'resolved'
      @model.done @render
    else if @model.state() is 'resolved'
      @render()

    @delegate "hover", ".category", @hoverCategory

  hoverCategory: (e)->
    console.log "CategoriesView#hoverCategory"
    @publishEvent "somethingHover",e

