//
//  TipCalculator.h
//  TipperAssignment
//
//  Created by David Pullar on 3/2/2014.
//  Copyright (c) 2014 David Pullar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Controller : NSObject {
    IBOutlet UISlider *customPercentSlider;
    IBOutlet UITextField *billTotalField;
    IBOutlet UILabel *tipTenPercentField;
    IBOutlet UILabel *tipFifteenPercentField;
    IBOutlet UILabel *tipTwentyPercentField;
    IBOutlet UILabel *customPercentLabel;
    IBOutlet UILabel *totalTenField;
    IBOutlet UILabel *totalFifteenField;
    IBOutlet UILabel *totalTwentyField;
    IBOutlet UILabel *totalCustomField;
    IBOutlet UILabel *tipCustomPercentField;
    
    NSString *billTotal; // "Bill Total" field
}

- (IBAction)calculateTip:(UITextField*)sender;
- (IBAction)updateCustom:(UISlider*)sender;

@end
