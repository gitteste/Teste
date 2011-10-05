//
//  Aula1ViewController.m
//  Aula1
//
//  Created by Cassius Pacheco on 10/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Aula1ViewController.h"

@implementation Aula1ViewController

//Sintetiza o Outlet labelTexto para ser utilizado aqui
@synthesize labelTexto;

//Implementação do metódo botaoPressionado, criado no Aula1ViewController.h
-(IBAction)botaoPressionado:(id)sender{
    //*********** Alteração no gitteste *****************
    //O sender é recebido como parâmetro e possui a informação de qual botão foi pressionado
    //Através dessa informação o ponteiro pTitulo apontará para o título escrito no botão que foi pressionado
    NSString *pTitulo = [sender titleForState:UIControlStateNormal];
    
    //Pega o título escrito no botão que está sendo apontado pelo ponteiro pTitulo e escreve no texto, que terá seu endereço armazenado no ponteiro pTexto
    NSString *pTexto = [[NSString alloc] initWithFormat:
                       @"Botão %@ pressionado.", pTitulo];
    
    //O outlet labelTexto recebe o ponteiro pTexto, que aponta para o texto criado acima
    labelTexto.text = pTexto;
    
    //Em seguida limpa-se a memória do ponteiro pTexto, pois não será mais usado o texto apontado por ele
    [pTexto release];
}

- (void)dealloc
{
    //libera a memória que foi alocada para o Outlet labelTexto
    [labelTexto release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void)viewDidUnload
{
    //O ponteiro Outlet recebe nulo para que ele não aponte mais para nenhum lugar, pois o endereço que ele apontava antes foi desalocado. Evitando assim possíveis erros de memória.
    self.labelTexto = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
