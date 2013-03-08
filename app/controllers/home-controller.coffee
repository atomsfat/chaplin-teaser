Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'
CategoriesView = require 'views/categories-view'
Categories = require 'models/categorias'

module.exports = class HomeController extends Controller
  index: ->
    @view = new HomePageView()
  categorias: ->
    console.log "home-controller#categegorias"
    @categories = new Categories(null, null)
    @view = new CategoriesView model: @categories
