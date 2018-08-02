//
//  main.m
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Doctor *doctor1 = [[Doctor alloc]initWithNameAndSpecialty:@"Trevego" Specialty:@"Cadiac"];
        
        Doctor *doctor2 = [[Doctor alloc]initWithNameAndSpecialty:@"Simpson" Specialty:@"Digestive system"];
        
        Patient *patient1 = [[Patient alloc]initWithNameAndDate:@"Bennett Cheung" ValidDateStr:@"2018-09-02"];
        patient1.symtom  = @"headache";
        
        Patient *patient2 = [[Patient alloc]initWithNameAndDate:@"Alan Cheung" ValidDateStr:@"2018-09-02"];
        patient2.symtom  = @"pain";
        
        [patient1 visitDoctor:doctor1];
        [patient2 visitDoctor:doctor1];
        
        
        [doctor1 listPatients];
        NSLog(@"Drug is %@", [patient1 requestMedication:doctor1]);
        
        NSLog(@"Drug is %@", [patient2 requestMedication:doctor1]);
        
        [Prescription listHistory];

    }
    return 0;
}
