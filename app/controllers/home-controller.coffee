Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'
CategoriesView = require 'views/categories-view'

module.exports = class HomeController extends Controller
  index: ->
    @view = new HomePageView()
  categorias: ->
    console.log "home-controller#categegorias"
    @view = new CategoriesView()
