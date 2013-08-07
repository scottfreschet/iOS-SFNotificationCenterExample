//
//  SFSender.h
//  iOS-SFNotificationCenterExample
//
//  Created by Scott Freschet on 8/7/13.
//  Copyright (c) 2013 Scott Freschet. All rights reserved.
//

#import <UIKit/UIKit.h>

// Notification Constants
extern NSString* const NOTIFICATION_TEST;
extern NSString* const NOTIFICATION_TEST_FIELD1;
extern NSString* const NOTIFICATION_TEST_FIELD2;
extern NSString* const NOTIFICATION_TEST_FIELD3;
extern NSString* const NOTIFICATION_TEST_FIELD4;


@interface SFSender : UIViewController <UITextFieldDelegate>

// Variables.

// IBOutlets.
@property (strong, nonatomic) IBOutlet UITextField* xTextField_1;
@property (strong, nonatomic) IBOutlet UITextField* xTextField_2;
@property (strong, nonatomic) IBOutlet UITextField* xTextField_3;
@property (strong, nonatomic) IBOutlet UITextField* xTextField_4;


// IBActions.
-(IBAction)buttonTapped:(id)sender;

@end
