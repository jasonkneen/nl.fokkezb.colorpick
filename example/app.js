var win = Ti.UI.createWindow({
  backgroundColor:'white'
});

var colorpicker = require('nl.fokkezb.colorpicker');
Ti.API.info("module is => " + colorpicker);

var view = colorpicker.createView({
	top: 0,
	left: 0,
	height: 50,
	width: 50
});

win.add(view);
win.open();