#import <Foundation/Foundation.h>

struct iOS {
    // this is the Original incoming request
    //  tptiphone://turn/teleportel/ios-demo
  __unsafe_unretained NSString *input_url;
  
    // this is the part we keep by removing first scheme
    //  turn/teleportel/ios-demo
  __unsafe_unretained NSString *use_url;
  
    // this is the variable to connect to server and do the conference
  __unsafe_unretained NSString *server;
  __unsafe_unretained NSString *agent;
  __unsafe_unretained NSString *roomid;
};

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    struct iOS struct_ios;
    struct_ios.input_url = @"tptiphone://turn/teleportel/ios-demo";
    
    
    NSArray *work_array = [struct_ios.input_url componentsSeparatedByString:@"tptiphone://"];
    NSLog(@"%@", work_array);
    
    for(NSArray *subArray in work_array) {
      NSLog(@"%@", subArray);
    }
    
    
    
    NSLog(@"%@", [work_array objectAtIndex:1] );
    
    struct_ios.use_url =[work_array objectAtIndex:1] ;
    
    
    if ([struct_ios.use_url length] > 0) {
      NSArray *work_array = [struct_ios.input_url componentsSeparatedByString:@"/"];
      struct_ios.server = [work_array objectAtIndex:0];
      struct_ios.agent = [work_array objectAtIndex:1];
      struct_ios.roomid = [work_array objectAtIndex:2];
      
      NSLog(@"OKOKOKOK!!!!");
    }
    else {
      NSLog(@"NOT OK O KO K!!!!");
    }
    
    
    
  }
  
  return 0;
  
}
