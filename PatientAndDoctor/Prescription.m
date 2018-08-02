//
//  Prescription.m
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription
static NSDictionary *prescriptionHistory;

- (instancetype)initWithSymtom:(NSString *)symtom
{
    self = [super init];
    if (self) {
        _drugDictionary = @{@"headache":@"Advil",
                           @"pain": @"IBprofin",
                           @"diarrhea" :@"Imodium"};
        
        _drugName = _drugDictionary[symtom];
    }
    return self;
}

-(instancetype)init{
    return [self initWithSymtom:@"headache"];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.drugName];
}

+(void)addHistory:(NSString *)patient Drug:(Prescription *)drug{
    if (!prescriptionHistory)
    {
        prescriptionHistory = [[NSMutableDictionary alloc] init];
    }
    [prescriptionHistory setValue:drug forKey:patient];
}

+(void)listHistory{
    NSLog(@"List of prescription %@", prescriptionHistory);
}
@end
