//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
@class Doctor;

@interface Patient : NSObject
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSDate *healthCardValidDate;
@property (nonatomic, strong) NSString *symtom;

- (instancetype)initWithNameAndDate:(NSString*)name ValidDateStr:(NSString*)dateStr;
-(BOOL)visitDoctor:(Doctor*)doctor;
-(Prescription *)requestMedication:(Doctor*)doctor;
@end
