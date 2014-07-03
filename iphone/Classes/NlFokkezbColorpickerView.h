//
//  NlFokkezbColorpickerView.h
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "TiBase.h"
#import "TiUIView.h"
#import "HRColorPickerView.h"

@interface NlFokkezbColorpickerView : TiUIView {
    HRColorPickerView *colorPicker;
}

@property (nonatomic, readwrite, assign) UIColor* color;

@end