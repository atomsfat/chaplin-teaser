View = require 'views/base/view'
template = require 'views/templates/categories'

module.exports = class CategoriesView extends View
  autoRender: yes
  container: '#page-container'
  template: template
