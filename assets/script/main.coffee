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