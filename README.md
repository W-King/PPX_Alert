/** 
 *方式一 确定取消两个按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"这是一些信息"];
 [PPXAlert addBtnAlertTitle:@"确定" action:^{
 NSLog(@"确定");
 }];
 [PPXAlert addBtnAlertTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showAlertWithSender:self];
 
 *方式二 确定一个按钮
 [PPX_Alert showAlertViewCertainWithTitle:@"拍照" message:@"lalala" WithUIViewController:self];
 
 *方式三 中间弹出几个横向按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
 [PPXAlert addBtnAlertTitle:@"相机" action:^{
 NSLog(@"相机");
 }];
 [PPXAlert addBtnAlertTitle:@"相册" action:^{
 NSLog(@"相册");
 }];
 [PPXAlert addBtnAlertTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showAlertWithSender:self];
 
 方法四 底部弹出按钮
 PPX_Alert *PPXAlert = [[PPX_Alert alloc] initWithTitle:@"提示" message:@"拍照"];
 [PPXAlert addBtnSheetTitle:@"相机" action:^{
 NSLog(@"相机");
 }];
 [PPXAlert addBtnSheetTitle:@"相册" action:^{
 NSLog(@"相册");
 }];
 [PPXAlert addBtnSheetTitle:@"取消" action:^{
 NSLog(@"取消");
 }];
 [PPXAlert showActionSheetWithSender:self];
 */
