#import <Foundation/Foundation.h>

struct iOS {
  __unsafe_unretained NSString *input_url;
  __unsafe_unretained NSString *use_url;
  __unsafe_unretained NSString *server;
  __unsafe_unretained NSString *agent;
  __unsafe_unretained NSString *roomid;
  __unsafe_unretained NSArray *array_url;
  __unsafe_unretained NSArray *array_url_modified;
};

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    struct iOS StructIOS;
    StructIOS.input_url = @"https://a/b/c";
  
    //NSArray *work_array = [StructIOS.input_url componentsSeparatedByString:@"https://"];
    StructIOS.array_url = [StructIOS.input_url componentsSeparatedByString:@"https://"];
    NSLog(@"%@", StructIOS.array_url);
    
    for(NSArray *subArray in StructIOS.array_url) {
      NSLog(@"%@", subArray);
    }
    
    NSLog(@"%@", [StructIOS.array_url objectAtIndex:1] );
    StructIOS.use_url =[StructIOS.array_url objectAtIndex:1] ;
    
    if ([StructIOS.use_url length] > 0) {
      StructIOS.array_url_modified = [StructIOS.input_url componentsSeparatedByString:@"/"];
      StructIOS.server = [StructIOS.array_url_modified  objectAtIndex:0];
      StructIOS.agent = [StructIOS.array_url_modified  objectAtIndex:1];
      StructIOS.roomid = [StructIOS.array_url_modified  objectAtIndex:2];
      
      NSLog(@"OK %@ %@ %@" ,
            StructIOS.server,
            StructIOS.agent,
            StructIOS.roomid);
    }
    else {
      NSLog(@"NOK");
    }
  }
  
  return 0;
}
