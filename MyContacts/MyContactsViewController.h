//
//  MyContactsViewController.h
//  MyContacts
//
//  Created by Charles Konkol on 2/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyContactsViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UITextField *txtFName;
    IBOutlet UITextField *txtLName;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtAddress;
    IBOutlet UITextField *txtCity;
    IBOutlet UITextField *txtState;
     IBOutlet UITextField *txtZip;
    IBOutlet UITextField *txtPhone;
    IBOutlet UITextField *txtWeb;
    IBOutlet UITextView *txtViews;
     IBOutlet UILabel *lblDatabase;
    
}
//textbox keyhide when enterkey pressed
-(IBAction) doneEditing:(id) sender;
//keyboard hide when bg touched
@property (nonatomic, retain) UIScrollView *scrollView;
- (IBAction)btnSave:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *txtFName;
@property (retain, nonatomic) IBOutlet UITextField *txtLName;
@property (retain, nonatomic) IBOutlet UITextField *txtAddress;
@property (retain, nonatomic) IBOutlet UITextField *txtCity;
@property (retain, nonatomic) IBOutlet UITextField *txtState;
@property (retain, nonatomic) IBOutlet UITextField *txtZip;
@property (retain, nonatomic) IBOutlet UITextField *txtPhone;
@property (retain, nonatomic) IBOutlet UITextField *txtWeb;
@property (retain, nonatomic) IBOutlet UILabel *lblDatabase;

- (IBAction)btnBack:(id)sender;





@property (retain, nonatomic) IBOutlet UITextField *txtEmail;
@property (retain, nonatomic) IBOutlet UITextView *txtViews;

@end
