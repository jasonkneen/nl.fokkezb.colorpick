//
//  NlFokkezbColorpickerView.m
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "NlFokkezbColorpickerView.h"

@implementation NlFokkezbColorpickerView

-(HRColorPickerView*)colorPicker
{
    if (colorPicker==nil)
    {
        colorPicker = [[HRColorPickerView alloc] init];
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

-(id)color
{
    
    NSLog(@"[VIEW LIFECYCLE EVENT] Property get: getColor_");
    
    UIColor *uc = [self colorPicker].color;
    TiColor *tc = [[TiColor alloc] initWithColor:uc name:@"#fff"];
    
    return tc;
}

@end