//
//  SFRecipient.m
//  iOS-SFNotificationCenterExample
//
//  Created by Scott Freschet on 8/7/13.
//  Copyright (c) 2013 Scott Freschet. All rights reserved.
//

#import "SFRecipient.h"

@interface SFRecipient ()
@end

@implementation SFRecipient

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
    
    // Register notification callbacks.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification_Test:) name:NOTIFICATION_TEST object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//////////////////////////////////////////////////////////////////
#pragma mark - Notification Handlers
//////////////////////////////////////////////////////////////////

-(void)notification_Test:(NSNotification*) notification
{
    NSLog(@"notification_Test");
    
    // Grab the notification data.
    NSDictionary* data = [notification object];
    NSString* field1 = [data objectForKey:NOTIFICATION_TEST_FIELD1];
    NSString* field2 = [data objectForKey:NOTIFICATION_TEST_FIELD2];
    NSString* field3 = [data objectForKey:NOTIFICATION_TEST_FIELD3];
    NSString* field4 = [data objectForKey:NOTIFICATION_TEST_FIELD4];
    
    // Update UILabels.
    if (![field1 isEqualToString:@""])
    {
        self.xLabel_1.text = field1;
    }
    if (![field2 isEqualToString:@""])
    {
        self.xLabel_2.text = field2;
    }
    if (![field3 isEqualToString:@""])
    {
        self.xLabel_3.text = field3;
    }
    if (![field4 isEqualToString:@""])
    {
        self.xLabel_4.text = field4;
    }
    
}


/////////////////////////////////////////////////////////////////
#pragma mark - IBActions.
/////////////////////////////////////////////////////////////////

-(IBAction)backTapped:(id)sender
{
    NSLog(@"backTapped");
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
