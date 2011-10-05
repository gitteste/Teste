//
//  Aula1ViewController.h
//  Aula1
//
//  Created by Cassius Pacheco on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Aula1ViewController : UIViewController {
    //Criada uma label para que ela possa receber o texto futuramente
    UILabel *labelTexto; //editando o negócio
}

//Criada property para utilizarmos essa label como um Outlet, intregrando assim com o interface builder
@property(nonatomic,retain) IBOutlet UILabel *labelTexto;


//Criada ação para que quando o botão for pressionado ele acione o método que será escrito no Aula1ViewController.m
-(IBAction)botaoPressionado:(id)sender;

@end
