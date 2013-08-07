//
//  SFRecipient.h
//  iOS-SFNotificationCenterExample
//
//  Created by Scott Freschet on 8/7/13.
//  Copyright (c) 2013 Scott Freschet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFSender.h"

@interface SFRecipient : UIViewController

// Variables.

// IBOutlets.
@property (strong, nonatomic) IBOutlet UILabel* xLabel_1;
@property (strong, nonatomic) IBOutlet UILabel* xLabel_2;
@property (strong, nonatomic) IBOutlet UILabel* xLabel_3;
@property (strong, nonatomic) IBOutlet UILabel* xLabel_4;


// IBActions.
-(IBAction)backTapped:(id)sender;

@end
