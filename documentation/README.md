# ColorPicker Module [![Appcelerator Titanium](http://www-static.appcelerator.com/badges/titanium-git-badge-sq.png)](http://appcelerator.com/titanium/)

Wraps Ryota Hayashi's [ColorPicker for iOS](https://github.com/hayashi311/Color-Picker-for-iOS) for [Appcelerator Titanium](http://appcelerator.com/titanium).

## Example
See the [site](http://hayashi311.github.io/Color-Picker-for-iOS/) of the wrapped module:

<a href="http://hayashi311.github.io/Color-Picker-for-iOS/" target="_blank"><img src="https://raw.githubusercontent.com/hayashi311/Color-Picker-for-iOS/screenshot/Vimeo.png" alt="Video" style="max-width:100%;"></a>

## Usage
See the [example](example/app.js) or:

### Alloy

**index.xml**
	
	<Alloy>
		<View module="nl.fokkezb.colorpick" color="#F00" onChange="onChange" />
	</Alloy>
	
**index.js**

	function onChange(e) {
		console.debug('Color: ' e.color);
	}

### Classic

	var colorpicker = require("nl.fokkezb.colorpick");
	var view = colorpicker.createView({
		color: "#F00"
	});
	view.addEventListener('change', function(e) {
		console.debug('Color: ' + e.color);
	});
	
## Reference

### colorpicker.color

Sets or gets the picked color.

#### colorpicker:change

Fires when the users picks a different color. The hex value of the color can be found in the `color` property of the event object received by the listener.

## Author

By [Fokke Zandbergen](http://fokkezb.nl/info) with some help of [Marcel Pociot](https://github.com/mpociot).

## License

	The MIT License (MIT)
	
	Copyright (c) 2014 Fokke Zandbergen
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
