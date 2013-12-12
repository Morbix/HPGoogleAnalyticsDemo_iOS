//
//  ViewController.m
//  GoogleAnalyticsDemo
//
//  Created by HP Developer on 10/12/13.
//  Copyright (c) 2013 HP Developer. All rights reserved.
//

#import "ViewController.h"

#import "GAI.h"
#import "GAIFields.h"
#import "GAIDictionaryBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker set:kGAIScreenName value:self.navigationItem.title];
    
    [tracker send:[[GAIDictionaryBuilder createAppView] build]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (IBAction)btnSaldoTouched:(id)sender
{
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Menu" action:@"Saldo" label:@"Saldo" value:nil] build]];
    
    [self performSegueWithIdentifier:@"saldoViewController" sender:nil];
}

- (IBAction)btnExtratoTouched:(id)sender
{
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Menu" action:@"Extrato" label:@"Extrato" value:nil] build]];
    
    [self performSegueWithIdentifier:@"extratoViewController" sender:nil];
}

- (IBAction)btnTransferenciaTouched:(id)sender
{
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Menu" action:@"Transferência" label:@"Transferência" value:nil] build]];
    
    [self performSegueWithIdentifier:@"transferenciaViewController" sender:nil];
}

- (IBAction)btnAgendamentosTouched:(id)sender
{
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Menu" action:@"Agendamentos" label:@"Agendamentos" value:nil] build]];
    
    [self performSegueWithIdentifier:@"agendamentosViewController" sender:nil];
}

- (IBAction)btnSairTouched:(id)sender
{
    [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Exit" action:@"Menu" label:@"Menu" value:nil] build]];
}
@end
