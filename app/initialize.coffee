window.App = require('app')

App.Store = DS.Store.extend(
  revision: 13
)

App.Router.map(->
  #@route('index', path: '/')
)