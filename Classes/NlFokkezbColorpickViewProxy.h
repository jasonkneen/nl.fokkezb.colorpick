//
//  NlFokkezbColorpickViewProxy.h
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "TiViewProxy.h"
#import "HRColorPickerView.h"

@interface NlFokkezbColorpickViewProxy : TiViewProxy {
    
}

- (NSString*)getHEXFromColor:(UIColor *)color;
- (void)colorDidChange:(HRColorPickerView *)colorPicker;

@end