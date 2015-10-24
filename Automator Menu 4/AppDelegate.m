//
//  AppDelegate.m
//  Automator Menu 4
//
//  Created by Allen Xavier on 10/23/15.
//  Copyright (c) 2015 Allen Garvey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)awakeFromNib{
	_statusBar = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	_statusBar.title = @":>";
	_statusBar.menu = _statusMenu;
	_statusBar.highlightMode = YES;
}
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	_asExecuter = [ASExecuter new];
	[NSApp setServicesProvider:_asExecuter];
	NSUpdateDynamicServices();
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

- (IBAction)openCurrentFinderInTerminal:(id)sender {
	[_asExecuter openCurrentFinderInTerminal];
}
@end
