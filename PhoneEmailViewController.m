//
//  PhoneEmailViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 12/8/12.
//  Copyright (c) 2012 Dominic Kynkor. All rights reserved.
//

#import "PhoneEmailViewController.h"

@interface PhoneEmailViewController ()

@end

@implementation PhoneEmailViewController

@synthesize teacherselection;
@synthesize ext;
@synthesize email;
@synthesize textfield;
@synthesize textview;

-(IBAction)textFieldDidEndEditing:(id)sender{
    [sender resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	placeNames = [[NSMutableArray alloc] init];
	[placeNames addObject:@"Administration- Fr. Richard C. Hermes, S.J."];
    [placeNames addObject:@"Administration- Ms. Ruth Kegel"];
	[placeNames addObject:@"Administration- Mr. Barry Neuburger"];
	[placeNames addObject:@"Administration- Mrs. Debra A. Pacheco"];
	[placeNames addObject:@"Administration- Dr. Angelo Pastore"];
	[placeNames addObject:@"Administration- Mr. Terry Rupp"];
    //Good
	[placeNames addObject:@"Campus Ministry- Fr. Francis Brou, S.J."];
	[placeNames addObject:@"Campus Ministry- Mr. Brian Greenfield"];
    [placeNames addObject:@"Campus Ministry- Mr. Richard A. Warren"];
    //Good
    [placeNames addObject:@"English- Mr. Ted Beil"];
    [placeNames addObject:@"English- Ms. Rosalie L. Brennan"];
    [placeNames addObject:@"English- Mrs. Aimee Busquet"];
    [placeNames addObject:@"English- Mr. Ernest J. Charette"];
    [placeNames addObject:@"English- Mr. Paul C. Davis"];
    [placeNames addObject:@"English- Mr. Austin D. Freeman"];
    [placeNames addObject:@"English- Mr. Greg Malafronte"];
    [placeNames addObject:@"English- Ms. Jennifer Martinez"];
    [placeNames addObject:@"English- Mr. Richard Miller"];
    [placeNames addObject:@"English- Mr. Jason J. Musial"];
    [placeNames addObject:@"English- Mr. Matt Thompson"];
    //Good
    [placeNames addObject:@"Fine Arts- Mr. Kevin Ball"];
    [placeNames addObject:@"Fine Arts- Mrs. Nina Wegmann"];
    //Good
    [placeNames addObject:@"Foreign Language- Mr. Juan N. Cruz"];
    [placeNames addObject:@"Foreign Language- Mrs. Denise Diaz"];
    [placeNames addObject:@"Foreign Language- Fr. Douglas Hypolite, S.J."];
    [placeNames addObject:@"Foreign Language- Mr. Richard Peloquin"];
    [placeNames addObject:@"Foreign Language- Mrs. Ann Phillips"];
    [placeNames addObject:@"Foreign Language- Mrs. Doris Recinos"];
    [placeNames addObject:@"Foreign Language- Mr. Nicholas Werner"];
    //Good
    [placeNames addObject:@"Facilities- Mr. Chris Lucas"];
    [placeNames addObject:@"Facilities- Mr. Rafael Fernandez"];
    //Good
    [placeNames addObject:@"Guidance- Mrs. Cynthia Batik"];
    [placeNames addObject:@"Guidance- Mrs. Eileen Charette"];
    [placeNames addObject:@"Guidance- Fr. Matthew Gamber, S.J."];
    [placeNames addObject:@"Guidance- Mr. Fernando Rodrigues"];
    [placeNames addObject:@"Guidance- Mr. Chris Smith"];
    //
    [placeNames addObject:@"Mathematics- Ms. Molly Biebel"];
    [placeNames addObject:@"Mathematics- Ms. April Bombka"];
    [placeNames addObject:@"Mathematics- Mr. James Charles"];
    [placeNames addObject:@"Mathematics- Mrs. Paula Collazo"];
    [placeNames addObject:@"Mathematics- Mr. John Lacy"];
    [placeNames addObject:@"Mathematics- Mr. Gregory Maurin"];
    [placeNames addObject:@"Mathematics- Ms. Peggy Martin"];

    [placeNames addObject:@"Mathematics- Mr. Michael E. Morin"];
    [placeNames addObject:@"Mathematics- Mr. Joseph Sabin"];
    //
    [placeNames addObject:@"Physical Education- Mr. Neal B. Goldman"];
    [placeNames addObject:@"Physical Education- Mr. Andrew Wood"];
    //Good
    [placeNames addObject:@"Presidents's Office Staff- Mrs. Jennifer Brown"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Vincent Davila"];
    [placeNames addObject:@"Presidents's Office Staff- Mrs. Dorothy Hinde"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Nicholas Hohman"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Kevin Labadie"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Charles Leonard"];
    [placeNames addObject:@"Presidents's Office Staff- Mrs. Sharon Madigan"];
    [placeNames addObject:@"Presidents's Office Staff- Mrs. Susan Pizzo"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Nicholas Suszynski"];
    [placeNames addObject:@"Presidents's Office Staff- Ms. Diana Tyska"];
    [placeNames addObject:@"Presidents's Office Staff- Mr. Peter Young"];
    [placeNames addObject:@"Presidents's Office Staff- Mrs. Jane Younger"];
    //Good
    [placeNames addObject:@"Principal's Office Staff- Mr. Mark Alsdorf"];
    [placeNames addObject:@"Principal's Office Staff- Ms. Paulette Mack"];
    [placeNames addObject:@"Principal's Office Staff- Mrs. Janice Manhold"];
    [placeNames addObject:@"Principal's Office Staff- Mr. Stephen Matesich"];
    [placeNames addObject:@"Principal's Office Staff- Mr. Brian McNulty"];
    [placeNames addObject:@"Principal's Office Staff- Mrs. Joanne Stocker"];
    //Good
    [placeNames addObject:@"Science- Mr. Johnathan Barlaan"];
    [placeNames addObject:@"Science- Mr. Christopher Cano"];
    [placeNames addObject:@"Science- Mr. William S. Eggert"];
    [placeNames addObject:@"Science- Mrs. Lauren Maguire"];
    [placeNames addObject:@"Science- Ms. Amy Martin"];
    [placeNames addObject:@"Science- Mr. Daniel Noyes"];
    [placeNames addObject:@"Science- Mr. Raymond A. Rodriguez"];
    [placeNames addObject:@"Science- Mr. Nathan Stibrich"];
    //Good
    [placeNames addObject:@"Social Studies- Mr. Jorge A. Bernales"];
    [placeNames addObject:@"Social Studies- Mr. William Bryson III"];
    [placeNames addObject:@"Social Studies- Mrs. Vindri Gajadhar"];
    [placeNames addObject:@"Social Studies- Mr. Michael Higgins"];
    [placeNames addObject:@"Social Studies & Theology- Fr. J. Patrick Hough, S.J."];
    [placeNames addObject:@"Social Studies- Mr. Matthew Kaiser"];
    
    [placeNames addObject:@"Social Studies & Theology- Mr. Samuel P. Mandt"];
    [placeNames addObject:@"Social Studies- Mr. Michael A. Scicchitano"];
    //Good
    [placeNames addObject:@"Technology- Mr. John Caballero"];
    [placeNames addObject:@"Technology- Mr. Tung Le"];
    //Good
    [placeNames addObject:@"Theology- Mr. David Paternostro, S.J."];
    [placeNames addObject:@"Theology- Mr. Peter Flores"];
    [placeNames addObject:@"Theology- Mr. David Paternostro, S.J."];
    [placeNames addObject:@"Theology- Mrs. Rania Saade"];
    [placeNames addObject:@"Theology- Mr. Sean Salai, S.J."];
    //Good
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark Picker View Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
	
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
	
	return [placeNames count];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	//NSLog(@"Place Name %@. Index of selected place: %i", [placeNames objectAtIndex:row], row);
    teacherselection.text= [placeNames objectAtIndex:row];
    NSInteger formulaRow=[pickerView selectedRowInComponent:0];
    NSString *formula=[placeNames objectAtIndex:formulaRow];
    if ([formula isEqualToString:@"Administration- Fr. Richard C. Hermes, S.J."]){
        ext.text=@"701";
        email.text=@"rhermes@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Administration- Ms. Ruth Kegel"]){
        ext.text=@"512";
        email.text=@"rkegels@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Administration- Mr. Barry Neuburger"]){
        ext.text=@"508";
        email.text=@"bneuburger@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Administration- Mrs. Debra A. Pacheco"]){
        ext.text=@"508";
        email.text=@"dpacheco@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Administration- Dr. Angelo Pastore"]){
        ext.text=@"506";
        email.text=@"apastore@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Administration- Mr. Terry Rupp"]){
        ext.text=@"612";
        email.text=@"trupp@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Campus Ministry- Fr. Francis Brou, S.J."]){
        ext.text=@"113";
        email.text=@"fbrou@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Campus Ministry- Mr. Brian Greenfield"]){
        ext.text=@"110";
        email.text=@"bgreenfield@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Campus Ministry- Mr. Richard A. Warren"]){
        ext.text=@"111";
        email.text=@"rwarren@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"English- Mr. Ted Beil"]){
        ext.text=@"409";
        email.text=@"tbeil@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Ms. Rosalie L. Brennan"]){
        ext.text=@"109";
        email.text=@"rbrennan@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mrs. Aimee Busquet"]){
        ext.text=@"408";
        email.text=@"abusquet@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Ernest J. Charette"]){
        ext.text=@"607";
        email.text=@"ejcharette@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Paul C. Davis"]){
        ext.text=@"608";
        email.text=@"pdavis@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Austin D. Freeman"]){
        ext.text=@"407";
        email.text=@"afreeman@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Greg Malafronte"]){
        ext.text=@"405";
        email.text=@"gmalafronte@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Ms. Jennifer Martinez"]){
        ext.text=@"108";
        email.text=@"jmartinez@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Richard Miller"]){
        ext.text=@"100";
        email.text=@"rmiller@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Jason J. Musial"]){
        ext.text=@"107";
        email.text=@"jmusial@jesuittampa.org";
    }
    if ([formula isEqualToString:@"English- Mr. Matt Thompson"]){
        ext.text=@"613";
        email.text=@"mthompson@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Fine Arts- Mr. Kevin Ball"]){
        ext.text=@"606";
        email.text=@"kball@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Fine Arts- Mrs. Nina Wegmann"]){
        ext.text=@"605";
        email.text=@"nwegmann@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Foreign Language- Mr. Juan N. Cruz"]){
        ext.text=@"503";
        email.text=@"jcruz@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Mrs. Denise Diaz"]){
        ext.text=@"504";
        email.text=@"ddiaz@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Fr. Douglas Hypolite, S.J."]){
        ext.text=@"310";
        email.text=@"dhypolite@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Mrs. Ann Phillips"]){
        ext.text=@"501";
        email.text=@"aphillips@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Mr. Richard Peloquin"]){
        ext.text=@"312";
        email.text=@"rpeloquin@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Mrs. Doris Recinos"]){
        ext.text=@"502";
        email.text=@"drecinos@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Foreign Language- Mr. Nicholas Werner"]){
        ext.text=@"201";
        email.text=@"nwerner@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Facilities- Mr. Chris Lucas"]){
        ext.text=@"711";
        email.text=@"clucas@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Facilities- Mr. Rafael Fernandez"]){
        ext.text=@"530";
        email.text=@"rfernandez@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Guidance- Mrs. Cynthia Batik"]){
        ext.text=@"523";
        email.text=@"cbatik@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Guidance- Mrs. Eileen Charette"]){
        ext.text=@"524";
        email.text=@"emcharette@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Guidance- Fr. Matthew Gamber, S.J."]){
        ext.text=@"525";
        email.text=@"mgamber@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Guidance- Mr. Fernando Rodrigues"]){
        ext.text=@"521";
        email.text=@"frodrigues@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Guidance- Mr. Chris Smith"]){
        ext.text=@"522";
        email.text=@"csmith@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Mathematics- Ms. Molly Biebel"]){
        ext.text=@"401";
        email.text=@"mbiebel@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Ms. April Bombka"]){
        ext.text=@"403";
        email.text=@"abombka@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mr. James Charles"]){
        ext.text=@"309";
        email.text=@"jcharles@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mrs. Paula Collazo"]){
        ext.text=@"404";
        email.text=@"pcollazo@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mr. John Lacy"]){
        ext.text=@"406";
        email.text=@"jlacy@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Ms. Peggy Martin"]){
        ext.text=@"402";
        email.text=@"pmartin@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mr. Gregory Maurin"]){
        ext.text=@"101";
        email.text=@"gmaurin@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mr. Michael E. Morin"]){
        ext.text=@"302";
        email.text=@"mmorin@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Mathematics- Mr. Joseph Sabin"]){
        ext.text=@"301";
        email.text=@"jsabin@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Physical Education- Mr. Neal B. Goldman"]){
        ext.text=@"611";
        email.text=@"ngoldman@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Physical Education- Mr. Andrew Wood"]){
        ext.text=@"617";
        email.text=@"ajwood@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Presidents's Office Staff- Mrs. Jennifer Brown"]){
        ext.text=@"714";
        email.text=@"jbrown@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Vincent Davila"]){
        ext.text=@"411";
        email.text=@"vdavila@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mrs. Dorothy Hinde`"]){
        ext.text=@"707";
        email.text=@"dhinde@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Nicholas Hohman"]){
        ext.text=@"709";
        email.text=@"nhohman@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Kevin Labadie"]){
        ext.text=@"526";
        email.text=@"klabadie@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Charles Leonard"]){
        ext.text=@"713";
        email.text=@"cleonard@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mrs. Sharon Madigan"]){
        ext.text=@"0";
        email.text=@"smadigan@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mrs. Susan Pizzo"]){
        ext.text=@"712";
        email.text=@"spizzo@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Nicholas Suszynski"]){
        ext.text=@"704";
        email.text=@"nsuszynski@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Ms. Diana Tyska"]){
        ext.text=@"701";
        email.text=@"dtyska@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mr. Peter Young"]){
        ext.text=@"705";
        email.text=@"jyounger@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Presidents's Office Staff- Mrs. Jane Younger"]){
        ext.text=@"706";
        email.text=@"jyounger@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Principal's Office Staff- Mr. Mark Alsdorf"]){
        ext.text=@"410";
        email.text=@"malsdorf@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Principal's Office Staff- Ms. Paulette Mack"]){
        ext.text=@"508";
        email.text=@"pmack@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Principal's Office Staff- Mrs. Janice Manhold"]){
        ext.text=@"520";
        email.text=@"jmanhold@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Principal's Office Staff- Mr. Stephen Matesich"]){
        ext.text=@"509";
        email.text=@"smatesich@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Principal's Office Staff- Mr. Brian McNulty"]){
        ext.text=@"616";
        email.text=@"bmcnulty@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Principal's Office Staff- Mrs. Joanne Stocker"]){
        ext.text=@"506";
        email.text=@"jstocker@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Science- Mr. Johnathan Barlaan"]){
        ext.text=@"211";
        email.text=@"jbarlaan@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mr. Christopher Cano"]){
        ext.text=@"207";
        email.text=@"ccano@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mr. William S. Eggert"]){
        ext.text=@"209";
        email.text=@"beggert@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mrs. Lauren Maguire"]){
        ext.text=@"210";
        email.text=@"lmaguire@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Ms. Amy Martin"]){
        ext.text=@"202";
        email.text=@"amartin@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mr. Daniel Noyes"]){
        ext.text=@"206";
        email.text=@"dnoyes@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mr. Raymond A. Rodriguez"]){
        ext.text=@"203";
        email.text=@"rrodriguez@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Science- Mr. Nathan Stibrich"]){
        ext.text=@"205";
        email.text=@"nstibrich@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Social Studies- Mr. Jorge A. Bernales"]){
        ext.text=@"304";
        email.text=@"jbernales@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies- Mr. William Bryson III"]){
        ext.text=@"305";
        email.text=@"wbryson@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies- Mrs. Vindri Gajadhar"]){
        ext.text=@"307";
        email.text=@"vgajadhar@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies- Mr. Michael Higgins"]){
        ext.text=@"303";
        email.text=@"mhiggins@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies & Theology- Fr. J. Patrick Hough, S.J."]){
        ext.text=@"105";
        email.text=@"jphough@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies- Mr. Matthew Kaiser"]){
        ext.text=@"306";
        email.text=@"mkaiser@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies & Theology- Mr. Samuel P. Mandt"]){
        ext.text=@"308";
        email.text=@"smandt@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Social Studies- Mr. Michael A. Scicchitano"]){
        ext.text=@"311";
        email.text=@"mscicchitano@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Technology- Mr. John Caballero"]){
        ext.text=@"414";
        email.text=@"jcaballero@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Technology- Mr. Tung Le"]){
        ext.text=@"413";
        email.text=@"tle@jesuittampa.org";
    }
    //Good
    if ([formula isEqualToString:@"Theology- Mr. Peter Flores"]){
        ext.text=@"112";
        email.text=@"pflores@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Theology- Mr. David Paternostro, S.J."]){
        ext.text=@"104";
        email.text=@"dpaternostro@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Theology- Mrs. Rania Saade"]){
        ext.text=@"106";
        email.text=@"rsaade@jesuittampa.org";
    }
    if ([formula isEqualToString:@"Theology- Mr. Sean Salai, S.J."]){
        ext.text=@"102";
        email.text=@"ssalai@jesuittampa.org";
    }
    //Good
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel *pickerLabel = (UILabel *)view;
    CGRect frame = CGRectMake(0,0,230,40);
    pickerLabel = [[[UILabel alloc] initWithFrame:frame] autorelease];
    [pickerLabel setBackgroundColor:[UIColor clearColor]];
    [pickerLabel setFont:[UIFont boldSystemFontOfSize:12.0]];
    [pickerLabel setNumberOfLines:0];
    pickerLabel.textColor=[UIColor blueColor];
    [pickerLabel setText:[placeNames objectAtIndex:row]];
    return pickerLabel;
}
- (IBAction)Call:(id)sender{
    NSString *logext=self.ext.text;
    NSString *exten=ext.text;
    NSLog(@"Extension: %@", logext);
    NSString *numwext=[NSString stringWithFormat:@"tel://8138775344p%@",exten];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:numwext]];
}
- (IBAction)openMail:(id)sender{
    NSString *emailen=email.text;
        if ([MFMailComposeViewController canSendMail])
        {
            MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
            
            mailer.mailComposeDelegate = self;
            
            [mailer setSubject:textfield.text];
            
            NSArray *toRecipients = [NSArray arrayWithObjects:emailen, nil];
            [mailer setToRecipients:toRecipients];
            NSString *emailBody =textview.text;
            [mailer setMessageBody:emailBody isHTML:NO];
            [self presentModalViewController:mailer animated:YES];
        }
        else
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
                                                            message:@"Your device doesn't support the composer sheet"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
    }
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
    {
        switch (result)
        {
            case MFMailComposeResultCancelled:
                NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
                break;
            case MFMailComposeResultSaved:
                NSLog(@"Mail saved: you saved the email message in the drafts folder.");
                break;
            case MFMailComposeResultSent:
                NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
                break;
            case MFMailComposeResultFailed:
                NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
                break;
            default:
                NSLog(@"Mail not sent.");
                break;
        }
        [self dismissModalViewControllerAnimated:YES];
    }
@end
