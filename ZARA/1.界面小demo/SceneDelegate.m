#import "SceneDelegate.h"
#import "VCOne.h"
#import "VCTwo.h"
#import "VCThree.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
     self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene*)scene];
     
     [self.window makeKeyAndVisible];
     
     //创建三组视图控制器
     VCOne* vcOne = [[VCOne alloc] init];
     VCTwo* vcTwo = [[VCTwo alloc] init];
     VCThree* vcThree = [[VCThree alloc] init];
     
     //设置图标
     vcOne.tabBarItem.image = [UIImage imageNamed:@"icon2"];
     vcTwo.tabBarItem.image = [UIImage imageNamed:@"icon1"];
     vcThree.tabBarItem.image = [UIImage imageNamed:@"icon3"];
    
     //设置三组视图控制器的标题
     vcOne.title = @"首 页";
     vcTwo.title = @"购 买";
     vcThree.title = @"我 的";
     
     UINavigationController* HomeViewController = [[UINavigationController alloc] initWithRootViewController:vcOne];
     UINavigationController* BuyViewController = [[UINavigationController alloc] initWithRootViewController:vcTwo];
     UINavigationController* UserViewController = [[UINavigationController alloc] initWithRootViewController:vcThree];

     HomeViewController.navigationBarHidden = YES;
     BuyViewController.navigationBarHidden = YES;
    
     vcOne.view.backgroundColor = [UIColor blackColor];
     vcTwo.view.backgroundColor = [UIColor whiteColor];
     vcThree.view.backgroundColor = [UIColor redColor];
     
     //创建数组存入三组视图控制器
     NSArray* arr1 = [NSArray arrayWithObjects:HomeViewController, BuyViewController, UserViewController, nil];
     
     //创建分栏控制器
     UITabBarController* tbc01 = [UITabBarController new];
     //将数组添加到分栏控制器当中
     tbc01.viewControllers = arr1;
     //将分栏控制器显示
     tbc01.selectedIndex = 0;
     //分栏控制器颜色不透明
     tbc01.tabBar.translucent = YES;
     //分栏控制器的颜色
     //tbc01.tabBar.backgroundColor = [UIColor blackColor];     
     self.window.rootViewController = tbc01;

}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
