//
//  ASExecuter.m
//  Automator Menu 4
//
//  Created by Allen Xavier on 10/23/15.
//  Copyright (c) 2015 Allen Garvey. All rights reserved.
//

#import "ASExecuter.h"

@interface ASExecuter ()

@property (strong, nonatomic) NSAppleScript *openInTerminalScript;

@end

@implementation ASExecuter


- (instancetype) init{
	self = [super init];
	if (self) {
		_openInTerminalScript = [[NSAppleScript alloc] initWithSource:@""
								 "try\n"
								 "tell application \"Finder\" to set current_directory to quoted form of POSIX path of (target of window 1 as alias)\n"
								 "tell application \"Terminal\"\n"
								 "activate\n"
								 "do script \"cd \" & current_directory\n"
								 "end tell\n"
								 "on error\n"
								 "beep\n"
								 "end try\n"
								 "return input"
								 ];
	}
	
	return self;
}
- (void) openCurrentFinderInTerminal{
	[_openInTerminalScript executeAndReturnError:nil];
}
@end
