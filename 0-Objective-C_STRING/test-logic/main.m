#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *my_url_as_string = @"tptiphone://test";
    
    
    NSArray *array = [my_url_as_string componentsSeparatedByString:@"tptiphone://"];
    NSLog(@"%@", array);
    
    for(NSArray *subArray in array) {
      NSLog(@"%@", subArray);

    }
    
    NSLog(@"%@", [array objectAtIndex:1] );
    
  }
  
  return 0;
  
}
