//
//  Prescription.h
//  PatientAndDoctor
//
//  Created by Bennett on 2018-08-02.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property (nonatomic, strong) NSDictionary *drugDictionary;
@property (nonatomic, strong) NSString *drugName;

-(id)initWithSymtom:(NSString *)symtom;
+(void)addHistory:(NSString*)patient Drug:(Prescription*)drug;
+(void)listHistory;
@end
