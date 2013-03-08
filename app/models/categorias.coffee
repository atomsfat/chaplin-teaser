Model = require 'models/base/model'

module.exports = class Categorias extends Model

  initialize: (attributes, options) ->
    console.log "categorias#initialize"
    super
    @url = "http://localhost:3333/json/categories.json"

    @initDeferred()
    @fetch success: (model, response)->
      console.log "model resolved"
      model.resolve()

  parse: (response) ->
    console.log response
    response
