###
greeting
###
greetings = [
  'Nothing to see here. Move along...'
  'These are not the droids you\'re looking for...'
  'This is no moon...'
]
console.log _.sample(greetings)
console.log 'But have you been to http://firstdoit.com?'

###
headroom
###

headroom = new Headroom $('.navbar')[0],
  "offset": 0
  "tolerance": 0
  "classes":
    "initial": "animated"
    "pinned": "slideDown"
    "unpinned": "slideUp"

headroom.init()

###
low poly
###
$('.header-bg').each ->
  pattern = new Trianglify(
    x_gradient: Trianglify.colorbrewer.Greens[4]
    y_gradient: Trianglify.colorbrewer.Greens[3]
    cellsize: 100
    fillOpacity: 0.15
    strokeOpacity: 0
  ).generate(this.clientWidth, this.clientHeight)
  $(this).attr('style', 'background-image: '+pattern.dataUrl)