//
//  AudioViewController.m
//  Jesuit Tampa
//
//  Created by Dominic Kynkor on 1/4/14.
//  Copyright (c) 2014 Dominic Kynkor. All rights reserved.
//

#import "AudioViewController.h"
#import "AudioCollectionViewCell.h"

@interface AudioViewController ()
{
    NSArray *arrayDescription;
    AVAudioPlayer *audioPlayer;
}

@end

@implementation AudioViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //[[self audioCollectionView]setDataSource:self];
    //[[self audioCollectionView]setDelegate:self];
    /*
    arrayDescription=[[NSArray alloc]initWithObjects:@"Alma Mater",@"Blue & White", nil];
    NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"myAudio" ofType:@"mp3"];
    
    
    
    
    NSURL *url=[NSURL fileURLWithPath:stringPath];
    
    NSError *error;
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    
    */
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger *)section
{
    return [arrayDescription count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexpath
{
    static NSString *cellIdentifier=@"audioCell";
    AudioCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexpath];
    [[cell audioTitle]setText:[arrayDescription objectAtIndex:indexpath.item]];
    
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}

- (IBAction)play:(UIButton *)sender{
    NSString *selectedAudio;
    selectedAudio=[[NSBundle mainBundle]pathForResource:@"myaudio" ofType:@"mp3"];
    NSURL *url=[NSURL fileURLWithPath:selectedAudio];
    
    NSError *error;
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
}

- (IBAction)pause:(UIButton *)sender {
    [audioPlayer pause];
}

- (IBAction)stop:(UIButton *)sender {
    [audioPlayer stop];
}
@end
