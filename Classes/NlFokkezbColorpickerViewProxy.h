//
//  NlFokkezbColorpickerViewProxy.h
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "TiViewProxy.h"
#import "HRColorPickerView.h"

@interface NlFokkezbColorpickerViewProxy : TiViewProxy {
    
}

- (NSString*)getHEXFromColor:(UIColor *)color;
- (void)colorDidChange:(HRColorPickerView *)colorPicker;

@end