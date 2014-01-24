fs      = require 'fs'
sysPath = require 'path'

# See docs at http://brunch.readthedocs.org/en/latest/config.html.

exports.config = 

  files: 
    
    javascripts: 
      defaultExtension: 'js',
      joinTo: 
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/

      order: 
        before: [
          'vendor/scripts/handlebars-v1.2.1.js',
          'vendor/scripts/ember-v1.3.0.js',
          'vendor/scripts/ember-data.v1.0.0-beta.6.js',

          'vendor/scripts/bootstrap-3.0.3/affix.js',
          'vendor/scripts/bootstrap-3.0.3/transition.js',
          'vendor/scripts/bootstrap-3.0.3/alert.js',
          'vendor/scripts/bootstrap-3.0.3/button.js',
          'vendor/scripts/bootstrap-3.0.3/carousel.js',
          'vendor/scripts/bootstrap-3.0.3/collapse.js',
          'vendor/scripts/bootstrap-3.0.3/dropdown.js',
          'vendor/scripts/bootstrap-3.0.3/modal.js',
          'vendor/scripts/bootstrap-3.0.3/tooltip.js',
          'vendor/scripts/bootstrap-3.0.3/popover.js',
          'vendor/scripts/bootstrap-3.0.3/scrollspy.js',
          'vendor/scripts/bootstrap-3.0.3/tab.js'
          ]

    stylesheets:
      defaultExtension: 'less'
      joinTo: 'stylesheets/app.css'
      order:
       before: ['vendor/styles/bootstrap-3.0.3/bootstrap.less']

    templates:
      precompile: true
      root: 'templates'
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js' : /^app/

  modules:
    addSourceURLs: true

  # allow _ prefixed templates so partials work
  conventions:
    ignored: (path) ->
      startsWith = (string, substring) ->
        string.indexOf(substring, 0) is 0
      sep = sysPath.sep
      if path.indexOf("app#{sep}templates#{sep}") is 0
        false
      else
        startsWith sysPath.basename(path), '_'

  server:
    port: 3333
    base: '/'
    run: no