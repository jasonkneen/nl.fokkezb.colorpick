//
//  NlFokkezbColorpickerView.m
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "NlFokkezbColorpickerView.h"
#import "NlFokkezbColorpickerViewProxy.h"

@implementation NlFokkezbColorpickerView

-(HRColorPickerView*)colorPicker
{
    if (colorPicker==nil)
    {
        colorPicker = [[HRColorPickerView alloc] init];
        [colorPicker addTarget:self.proxy
                            action:@selector(colorDidChange:)
                  forControlEvents:UIControlEventValueChanged];
        [self addSubview:colorPicker];
    }
    
    return colorPicker;
}

-(void)initializeState
{
    [super initializeState];

    HRColorPickerView *cp = [self colorPicker];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (colorPicker!=nil)
    {
        [TiUtils setView:colorPicker positionRect:bounds];
    }
}

-(void)setColor_:(id)color
{
    TiColor *tc = [TiUtils colorValue:color];
    UIColor *uc = [tc _color];
    
    [self colorPicker].color = uc;
}

@end