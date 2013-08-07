//
//  SFSender.m
//  iOS-SFNotificationCenterExample
//
//  Created by Scott Freschet on 8/7/13.
//  Copyright (c) 2013 Scott Freschet. All rights reserved.
//

#import "SFSender.h"

///////////////////////////////////////
#pragma mark - Notification Constants
///////////////////////////////////////
NSString* const NOTIFICATION_TEST = @"notification_test";
NSString* const NOTIFICATION_TEST_FIELD1 = @"notification_test_field1";
NSString* const NOTIFICATION_TEST_FIELD2 = @"notification_test_field2";
NSString* const NOTIFICATION_TEST_FIELD3 = @"notification_test_field3";
NSString* const NOTIFICATION_TEST_FIELD4 = @"notification_test_field4";


@interface SFSender ()
@end

@implementation SFSender

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - IBActions.
/////////////////////////////////////////////////////////////////////////////////////////

-(IBAction)buttonTapped:(id)sender
{
    NSLog(@"buttonTapped");
    
    // Prepare notification with data.
    NSDictionary* data = [[NSDictionary alloc] initWithObjectsAndKeys:
                          self.xTextField_1.text, NOTIFICATION_TEST_FIELD1,
                          self.xTextField_2.text, NOTIFICATION_TEST_FIELD2,
                          self.xTextField_3.text, NOTIFICATION_TEST_FIELD3,
                          self.xTextField_4.text, NOTIFICATION_TEST_FIELD4,
                          nil];
    
    // Present appropriate viewController.
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController* SFRecipient = [storyboard instantiateViewControllerWithIdentifier:@"SFRecipient"];
    [self presentViewController:SFRecipient animated:NO completion:^
     {
         [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_TEST object:data];
     }];
    
}


//////////////////////////////////////////////
#pragma mark - UITextField Delegate
//////////////////////////////////////////////

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    // Nothing.    
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string isEqualToString:@"\n"])
    {
        [textField resignFirstResponder];
        return NO;
    }
    // For any other character return TRUE so that the text gets added to the view
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    // Nothing.
}

@end
