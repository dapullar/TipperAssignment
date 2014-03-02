//
//  TipCalculator.m
//  TipperAssignment
//
//  Created by David Pullar on 3/2/2014.
//  Copyright (c) 2014 David Pullar. All rights reserved.
//

#import "Controller.h"

@implementation Controller

    double amount = 0;

    - (IBAction)calculateTip:(UITextField*)sender {
        NSLog(@"test");
        
        amount = [[billTotalField text] doubleValue];
        
        double tenPerc = (10 * amount) / 100;
        double fifteenPerc = (15 * amount) / 100;
        double twentyPerc = (20 * amount) / 100;
    
        double tenTotal = amount + tenPerc;
        double fifteenTotal = amount + fifteenPerc;
        double twentyTotal = amount + twentyPerc;
        
        
    
        [tipTenPercentField setText:[NSString stringWithFormat:@"%.2f", tenPerc]];
        [tipFifteenPercentField setText:[NSString stringWithFormat:@"%.2f", fifteenPerc]];
        [tipTwentyPercentField setText:[NSString stringWithFormat:@"%.2f", twentyPerc]];
        [totalTenField setText:[NSString stringWithFormat:@"%.2f", tenTotal]];
        [totalFifteenField setText:[NSString stringWithFormat:@"%.2f", fifteenTotal]];
        [totalTwentyField setText:[NSString stringWithFormat:@"%.2f", twentyTotal]];
        
        
    }

    - (IBAction)updateCustom:(UISlider*)sender {
        
        double customPerc = [sender value];
        [customPercentLabel setText:[NSString stringWithFormat:@"%.2f%%", customPerc]];
        
        [tipCustomPercentField setText:[NSString stringWithFormat:@"%.2f", (customPerc * amount) / 100]];
        
        [totalCustomField setText:[NSString stringWithFormat:@"%.2f", amount + ((customPerc * amount) / 100)]];
        
    }


@end
