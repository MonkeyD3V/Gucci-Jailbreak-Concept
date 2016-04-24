#import "XXRootViewController.h"

@implementation XXRootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor whiteColor];
	self.title = @"Welcome To iOS 9.2-9.3.1 Gucci Jailbreak!";

 [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];

lab = [[UILabel alloc] initWithFrame:CGRectMake(235,50,800,200)];

lab.text = @"Please make a backup via itunes before jailbreaking.";

lab.font = [UIFont systemFontOfSize:25];

lab.textColor = [UIColor redColor];

[self.view addSubview:lab];

detectLabel = [[UILabel alloc] initWithFrame:CGRectMake(370,550,800,200)];

detectLabel.text = @"Detected iPad Mini 2 (iOS 9.3)";

detectLabel.font = [UIFont systemFontOfSize:22];

detectLabel.textColor = [UIColor redColor];

detectLabel.hidden = YES;

[self.view addSubview:detectLabel];

load = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(490,400,50,50)];

[load setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleGray];

load.color = [UIColor blackColor];

load.transform = CGAffineTransformMakeScale(1.70,1.70);

[self.view addSubview:load];

[load startAnimating];

[self performSelector:@selector(delay) withObject:nil afterDelay:7.0];

jb = [UIButton buttonWithType:UIButtonTypeRoundedRect];

jb.frame = CGRectMake(300,180,400,400);

[jb setTitle:@"Start Jailbreak!" forState:UIControlStateNormal];

[jb addTarget:self action: @selector(jailbreakMethod) forControlEvents:UIControlEventTouchUpInside];

jb.titleLabel.font = [UIFont systemFontOfSize:40];

[self.view addSubview:jb];

jb.hidden = YES;

}

-(void)delay {

load.hidden = YES;

jb.hidden = NO;

detectLabel.hidden = NO;

}

-(void)jailbreakMethod {

[self.navigationController setNavigationBarHidden:YES];

jb.hidden = YES;

detectLabel.hidden = YES;

lab.hidden = YES;

jbLoad = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(490,450,50,50)];

[jbLoad setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleGray];

jbLoad.color = [UIColor blackColor];

jbLoad.transform = CGAffineTransformMakeScale(1.70,1.70);

[self.view addSubview:jbLoad];

[jbLoad startAnimating];

[self performSelector:@selector(loadingTextDelay1) withObject:nil afterDelay:8.0];

loadTextOne = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextOne.text = @"Preparing Environment...";

loadTextOne.font = [UIFont systemFontOfSize:27];

loadTextOne.textColor = [UIColor redColor];

[self.view addSubview:loadTextOne];


}

-(void) loadingTextDelay1 {

loadTextOne.hidden = YES;

loadTextTwo = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextTwo.text = @"Injecting Bundles (1/2)...";

loadTextTwo.textColor = [UIColor redColor];

loadTextTwo.font =  [UIFont systemFontOfSize:27];

[self.view addSubview:loadTextTwo];

[self performSelector:@selector(loadingTextDelay2) withObject:nil afterDelay:12.0];

}

-(void) loadingTextDelay2 {

loadTextTwo.hidden = YES;

loadTextThree = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextThree.text = @"Injecting Bundles (2/2)...";

loadTextThree.textColor = [UIColor redColor];

loadTextThree.font = [UIFont systemFontOfSize:27];

[self.view addSubview:loadTextThree];

[self performSelector:@selector(loadingTextDelay3) withObject:nil afterDelay:10.0];

}

-(void) loadingTextDelay3 { 

loadTextThree.hidden = YES;

loadTextFour = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextFour.text = @"Applying Exploits...";

loadTextFour.textColor = [UIColor redColor];

loadTextFour.font = [UIFont systemFontOfSize:27];

[self.view addSubview:loadTextFour];

[self performSelector:@selector(loadingTextDelay4) withObject:nil afterDelay:20.0];

}

-(void) loadingTextDelay4 {

loadTextFour.hidden = YES;

loadTextFive = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextFive.text = @"Bypassing Code Sign Check...";

loadTextFive.textColor = [UIColor redColor];

loadTextFive.font = [UIFont systemFontOfSize:27];

[self.view addSubview:loadTextFive];

[self performSelector:@selector(loadingTextDelay5) withObject:nil afterDelay:7.0];

}

-(void) loadingTextDelay5 {

loadTextFive.hidden = YES;

loadTextSix = [[UILabel alloc] initWithFrame:CGRectMake(380,120,800,200)];

loadTextSix.text = @"Finishing Process...";

loadTextSix.textColor = [UIColor redColor];

loadTextSix.font = [UIFont systemFontOfSize:27];

[self.view addSubview:loadTextSix];

[self performSelector:@selector(FinishedMethod) withObject:nil afterDelay:12.0];

}

-(void) FinishedMethod {

loadTextSix.hidden = YES;

jbLoad.hidden = YES;

UIAlertView*theAlert = [[UIAlertView alloc] initWithTitle:@"Your device has been successfully jailbroken! To ensure there are no major bugs please reboot your device before using cydia." 

message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];

[theAlert show]; 

[theAlert release];



 
}
@end
