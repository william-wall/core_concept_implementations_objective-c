#import <Foundation/Foundation.h>

// declare shape interface
@interface Shape : NSObject {
   // create float variable
   CGFloat area;

}
// declare a print area method
- (void)printArea;
// declare a calculate area method
- (void)calculateArea;
@end
// implementation of the shape
@implementation Shape
// print area logic
- (void)printArea {

   NSLog(@"The area is %f", area);

}
// calculate area logic
- (void)calculateArea {

}

@end

@interface Square : Shape {

   CGFloat length;

}

- (id)initWithSide:(CGFloat)side;

- (void)calculateArea;

@end

@implementation Square

- (id)initWithSide:(CGFloat)side {

   length = side;

   return self;

}

- (void)calculateArea {

   area = length * length;

}

- (void)printArea {

   NSLog(@"The area of square is %f", area);

}

@end

@interface Rectangle : Shape {

   CGFloat length;

   CGFloat breadth;

}

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth;

@end

@implementation Rectangle

- (id)initWithLength:(CGFloat)rLength andBreadth:(CGFloat)rBreadth {

   length = rLength;

   breadth = rBreadth;

   return self;

}

- (void)calculateArea {

   area = length * breadth;

}

@end

int main(int argc, const char * argv[]) {

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   // square

   Shape *square = [[Square alloc]initWithSide:10.0];

   [square calculateArea];

   [square printArea];

   // rectangle

   Shape *rect = [[Rectangle alloc]initWithLength:10.0 andBreadth:5.0];

   [rect calculateArea];

   [rect printArea]; 



   [pool drain];

   return 0;
}