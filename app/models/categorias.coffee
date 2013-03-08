Model = require 'models/base/model'

module.exports = class Categorias extends Model

  initialize: (attributes, options) ->
    console.log "categorias#initialize"
    super
    @url = "http://localhost:3333/json/categories.json"
    @fetch()

  parse: (response) ->
    console.log response
    response
