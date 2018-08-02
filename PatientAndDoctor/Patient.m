//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithNameAndDate:(NSString*)name ValidDateStr:(NSString*)dateStr
{
    self = [super init];
    if (self) {
        _fullName = name;
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        
        _healthCardValidDate = [dateFormatter  dateFromString:dateStr];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithNameAndDate:@"No name" ValidDateStr:@"2018-01-01"];
}

- (BOOL)visitDoctor:(Doctor*)doctor{
    return [doctor willAcceptPatient:self];
}

-(Prescription*)requestMedication:(Doctor *)doctor{
    return [doctor requestMedicationForPatient:self Symtom:self.symtom];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Patient: %@ Health card %@", self.fullName, self.healthCardValidDate];
}
@end
