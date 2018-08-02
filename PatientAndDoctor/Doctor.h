//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *specialty;
@property (nonatomic, strong) NSMutableSet *patientSet;

- (instancetype)initWithNameAndSpecialty:(NSString*)name Specialty:(NSString*)specialty;
-(BOOL) willAcceptPatient:(Patient *)patient;
-(Prescription *)requestMedicationForPatient:(Patient *)patient Symtom:(NSString *) symtom;
-(void)listPatients;
@end
