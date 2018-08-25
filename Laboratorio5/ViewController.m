//
//  ViewController.m
//  Laboratorio5
//
//  Created by SAMUEL on 25/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtUser;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

@property (weak, nonatomic) IBOutlet UILabel *errUser;
@property (weak, nonatomic) IBOutlet UILabel *errPassword;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.errUser.text=[NSString stringWithFormat:@""];
    [self.errUser setHidden:true];
    [self.errUser setTextColor:[UIColor redColor]];
    self.errPassword.text=[NSString stringWithFormat:@""];
    [self.errPassword setHidden:true];
    [self.errPassword setTextColor:[UIColor redColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(id)sender {
    [self.errUser setHidden:true];
    [self.errPassword setHidden:true];
    if([self.txtUser.text isEqual:@""]){
        [self.errUser setHidden:false];
        [self.errUser setText:@"El usuario no puede ser nulo."];
    }else if(![self.txtUser.text isEqual:@"usu"]){
        [self.errUser setHidden:false];
        [self.errUser setText:@"Usuario Invalido."];
    }
    else if([self.txtPassword.text isEqual:@""]){
        [self.errPassword setHidden:false];
        [self.errPassword setText:@"El password no puede ser nulo."];
    }else if(![self.txtPassword.text isEqualToString:@"pass"]){
        [self.errPassword setHidden:false];
        [self.errPassword setText:@"Password Invalida."];
    }
    
    if(self.errPassword.isHidden || self.errUser.isHidden){
        UIStoryboard *st = [UIStoryboard storyboardWithName:@"PaisesStoryboard" bundle:nil];
        UIViewController *vc =[st instantiateViewControllerWithIdentifier:@"paisesStroyboard"];
        [self presentViewController:vc animated:true completion:nil];
    }
}

@end
