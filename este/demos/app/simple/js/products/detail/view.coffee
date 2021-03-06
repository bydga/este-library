###*
  @fileoverview este.demos.app.simple.products.detail.View.
###
goog.provide 'este.demos.app.simple.products.detail.View'

goog.require 'este.app.View'
goog.require 'este.demos.app.simple.products.detail.templates'

class este.demos.app.simple.products.detail.View extends este.app.View

  ###*
    @constructor
    @extends {este.app.View}
  ###
  constructor: ->
    super()

  ###*
    @type {Object}
    @protected
  ###
  params: null

  ###*
    @override
  ###
  enterDocument: ->
    super()
    @on 'button', 'click', @onButtonClick
    return

  ###*
    @param {goog.events.BrowserEvent} e
    @protected
  ###
  onButtonClick: (e) ->
    # explicit redirection example
    @redirect este.demos.app.simple.products.list.Presenter

  ###*
    @override
  ###
  update: ->
    window['console']['log'] "product with id #{@params['id']} rendered"
    html = este.demos.app.simple.products.detail.templates.element
      id: @params['id']
    @getElement().innerHTML = html
    return