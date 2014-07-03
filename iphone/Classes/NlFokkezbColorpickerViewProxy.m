//
//  NlFokkezbColorpickerViewProxy.m
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "NlFokkezbColorpickerViewProxy.h"

@implementation NlFokkezbColorpickerViewProxy

- (NSString*)getHEXFromColor:(UIColor *)color
{
    CGFloat r, g, b, a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    int rgb = (int) (r * 255.0f)<<16 | (int) (g * 255.0f)<<8 | (int) (b * 255.0f)<<0;
    return [NSString stringWithFormat:@"#%06x", rgb];
}

- (void)colorDidChange:(HRColorPickerView *)pickerView {
    TiColor *tc = [[TiColor alloc] initWithColor:pickerView.color name:[self getHEXFromColor:pickerView.color]];
    [self fireEvent:@"colorChange" withObject:@{ @"color": tc}];
}


@end