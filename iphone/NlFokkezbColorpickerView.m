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
    // This method is called right after allocating the view and
    // is useful for initializing anything specific to the view
    
    [super initializeState];
    
    [self colorPicker];
    
    NSLog(@"[VIEW LIFECYCLE EVENT] initializeState");
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (colorPicker!=nil)
    {
        NSLog(@"[VIEW LIFECYCLE EVENT] initializeState IN IF");
        [TiUtils setView:colorPicker positionRect:bounds];
    }
}

@end