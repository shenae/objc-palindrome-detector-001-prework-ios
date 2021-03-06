//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
        NSString *palindrome = @"palindrome";
        NSString *reversed = [self stringByReversingString:palindrome];
        NSLog(@"%@ : %@", palindrome, reversed);
    // do not alter
    return YES;  //
}   ///////////////


- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *reverse = [self stringByReversingString:string];
    
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }

@end
