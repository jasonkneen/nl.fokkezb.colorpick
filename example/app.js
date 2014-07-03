var colorpicker = require('nl.fokkezb.colorpicker');

var win = Ti.UI.createWindow({
  backgroundColor: '#ddd'
});

var btn = Ti.UI.createButton({
  top: 25,
  title: 'Get color value'
});

var view = colorpicker.createView({
  top: 60,

  // initial color (default: black)
  color: '#f00'
});

btn.addEventListener('click', function(e) {

  alert('The color: ' + view.color);

});

win.add(view);
win.add(btn);
win.open();