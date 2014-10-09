//
//  BNRViewController.m
//  Quiz
//
//  Created by Carla Lewis on 8/25/14.
//  Copyright (c) 2014 interapp. All rights reserved.
//

#import "BNRViewController.h"

@interface BNRViewController ()

@property (nonatomic) int currrentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;


@end

@implementation BNRViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

//call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        //create two arrays filled with questions and answers
        //and make the pointer point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Colorado?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Denver"];
    }
            
    //return the address of the new object
    return self;

}


- (IBAction)showQuestion:(id)sender
{

    //Step to the next questin
    self.currrentQuestionIndex++;
    
    //Am I past the last question?
    if(self.currrentQuestionIndex == [self.questions count])
    {
        //got back to the first question
        self.currrentQuestionIndex =0;
    }
    
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currrentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    
    //Reset answer label
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    //what is the answer to the current question?
    NSString *answer = self.answers[self.currrentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;



}

-(IBAction)showSupport:(id)sender
{}


@end
