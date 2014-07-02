//
//  NlFokkezbColorpickerView.m
//  ColorPicker
//
//  Created by Fokke Zandbergen on 02/07/14.
//
//

#import "NlFokkezbColorpickerView.h"

@implementation NlFokkezbColorpickerView

-(void)dealloc
{
    RELEASE_TO_NIL(colorPicker);
    [super dealloc];
}

-(HRColorPickerView*)colorPicker
{
    if (colorPicker==nil)
    {
        colorPicker = [[HRColorPickerView alloc] initWithFrame:[self frame]];
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
        NSLog(@"[VIEW LIFECYCLE EVENT] initializeState");
    
    if (colorPicker!=nil)
    {
        
            NSLog(@"[VIEW LIFECYCLE EVENT] initializeState IN IF");
        
//        [TiUtils setView:colorPicker positionRect:bounds];
//        colorPicker.frame = (CGRect) {.origin = CGPointZero, .size = frame.size};
        
        
        [TiUtils setView:colorPicker positionRect:bounds];
        HRColorPickerView *oldSlider = colorPicker;
        [colorPicker removeFromSuperview];
        colorPicker = [[HRColorPickerView alloc] initWithFrame:bounds];
        [self addSubview:colorPicker];

    }
}

@end