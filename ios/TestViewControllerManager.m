//
//  TestViewControllerManager.m
//  iOSLayoutBug
//
//  Created by Alexander Moller on 11/10/20.
//

#import "TestViewControllerManager.h"
#import "TestViewController.h"

@interface TestViewControllerManager()
@property TestViewController *vc;
@end

@implementation TestViewControllerManager
// This is name you expose to react native
RCT_EXPORT_MODULE(TestTableView)

- (UIView *)view {
  self.vc = [TestViewController new];
  return self.vc.view;
}

@end
