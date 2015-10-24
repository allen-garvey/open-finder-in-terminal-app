//
//  AppDelegate.h
//  Automator Menu 4
//
//  Created by Allen Xavier on 10/23/15.
//  Copyright (c) 2015 Allen Garvey. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ASExecuter.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusBar;
@property (strong, nonatomic) ASExecuter *asExecuter;

- (IBAction)openCurrentFinderInTerminal:(id)sender;

@end

