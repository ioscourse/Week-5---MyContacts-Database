//
//  MyContactsAppDelegate.h
//  MyContacts
//
//  Created by Charles Konkol on 2/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyContactsViewController;

@interface MyContactsAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MyContactsViewController *viewController;

@end
