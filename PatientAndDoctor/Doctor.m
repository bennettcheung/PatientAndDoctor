//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithNameAndSpecialty:(NSString *)name Specialty:(NSString *)specialty
{
    self = [super init];
    if (self) {
        _fullName = name;
        _specialty = specialty;
        _patientSet = [NSMutableSet new];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithNameAndSpecialty:@"Doctor Noname" Specialty:@"No Specialty"];
}

- (BOOL)willAcceptPatient:(Patient *)patient{
    //make sure the patient has health insurance
    if (patient.healthCardValidDate >= [NSDate date])
    {
        [self.patientSet addObject:patient];
        return YES;
    }
    return NO;
}

-(Prescription *)requestMedicationForPatient:(Patient *)patient Symtom:(NSString *)symtom
{
    Prescription *prescription = nil;
    //if the doctor already accepted the patient
    if ([self.patientSet containsObject:patient])
    {
        
        prescription =[[Prescription alloc]initWithSymtom:symtom];
        [Prescription addHistory:patient.fullName Drug:prescription];
    }
    return prescription;
}

-(void)listPatients{
    int patientCount = 0;
    NSLog(@"Here is the list of patients");
    for (Patient* patient in self.patientSet)
    {
        patientCount++;
        NSLog(@"Patient %i - %@", patientCount, patient);
    }
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Doctor %@ specialize in %@", self.fullName, self.specialty];
}
@end
