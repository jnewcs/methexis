# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  BLUR_RADIUS = 50
  canvas = document.getElementById("hero-canvas")
  canvasContext = canvas.getContext("2d")

  canvasBackground = new Image()
  canvasBackground.src = document.querySelector('[data-canvas-image]').src

  canvasBackground.onload = ->
    w = canvas.width
    h = canvas.height

    canvasContext.drawImage(canvasBackground, 0, 0, w, h)
    stackBlurCanvasRGBA("hero-canvas", 0, 0, w, h, BLUR_RADIUS)

