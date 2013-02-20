//
//  MyContactsViewController.m
//  MyContacts
//
//  Created by Charles Konkol on 2/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyContactsViewController.h"

@interface MyContactsViewController ()

@end

@implementation MyContactsViewController
@synthesize scrollView;
@synthesize txtEmail;
@synthesize txtFName;
@synthesize txtLName;
@synthesize txtViews;
@synthesize txtAddress;
@synthesize txtCity;
@synthesize txtState;
@synthesize txtZip;
@synthesize txtPhone;
@synthesize txtWeb;
@synthesize lblDatabase;
- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 0, 320, 520);
    [scrollView setContentSize:CGSizeMake(320, 1064)];
    [super viewDidLoad];
    
    //keyboard hooks
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view, typically from a nib.
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWasShown:) name:UIKeyboardDidShowNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    //[[NSNotificationCenter defaultCenter] removeObserver:self];
    [scrollView release];
    [txtFName release];
    [txtLName release];
    [txtEmail release];
    [txtViews release];
    [txtAddress release];
    [txtCity release];
    [txtState release];
    [txtZip release];
    [txtPhone release];
    [txtWeb release];
    [lblDatabase release];
    [super dealloc];
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

- (IBAction)btnSave:(id)sender {
    [txtEmail resignFirstResponder];
    [txtFName resignFirstResponder];
    [txtLName resignFirstResponder];
    [txtAddress resignFirstResponder];
    [txtCity resignFirstResponder];
    [txtState resignFirstResponder];
    [txtZip resignFirstResponder];
    [txtPhone resignFirstResponder];
    [txtWeb resignFirstResponder];
    //format
     txtViews.text = [NSString stringWithFormat:@"Firstname:%@\nLastName:%@\nAddress:%@\nCity:%@\nState:%@\nZip:%@\nPhone:%@\nWeb:%@\nEmail:%@",
                      txtFName.text, txtLName.text, txtAddress.text,txtCity.text, txtState.text,txtZip.text,
                      txtPhone.text, txtWeb.text, txtEmail.text];
 
   txtFName.Text = @"";
     txtLName.Text = @"";
     txtEmail.Text = @"";
    txtAddress.Text = @"";
    txtCity.Text = @"";
    txtState.Text = @"";
    txtZip.Text = @"";
    txtPhone.Text = @"";
    txtWeb.Text = @"";
    CGPoint scrollPoint = CGPointMake(0, lblDatabase.frame.origin.y);
    [scrollView setContentOffset:scrollPoint animated:YES];
}
-(void)dismissKeyboard {
    [txtEmail resignFirstResponder];
    [txtFName resignFirstResponder];
    [txtLName resignFirstResponder];
    [txtAddress resignFirstResponder];
    [txtCity resignFirstResponder];
    [txtState resignFirstResponder];
    [txtZip resignFirstResponder];
    [txtPhone resignFirstResponder];
    [txtWeb resignFirstResponder];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [scrollView setContentOffset:scrollPoint animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [scrollView setContentOffset:CGPointZero animated:YES];
}

- (IBAction)btnBack:(id)sender {
    [scrollView setContentOffset:CGPointZero animated:YES];
}
@end
