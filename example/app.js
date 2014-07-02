var win = Ti.UI.createWindow({
  backgroundColor:'white'
});

var colorpicker = require('nl.fokkezb.colorpicker');
Ti.API.info("module is => " + colorpicker);

var view = colorpicker.createView();

win.add(view);
win.open();