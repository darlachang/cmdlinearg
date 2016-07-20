//
//  main.m
//  cmdlinearg
//
//  Created by Ming-Han Chang on 2016/4/2.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct entry dictionary[100] = {
            { "aardvark", "a burrowing African mammal" },
            { "abyss", "ueslkr", "sersrlk"},
            { "tjeoj", "serioj", "serosj"},
            { "re;orij", "serlselr", "sfo9g"},
            { "ser", "seroj", "93rl"},
            { "liqe", "tet9s", "3rs"},
            { "sdf", "sdflke", "sdf"},
            { "qwe", "asd;o9", "f2t"},
            { "gower", "sdgo;ie", "sdfx"},
            { "er;oi", "sdf3", "serc"}
        };
        
        int entries = 10;
        int entryNumber;
        int lookup (struct entry dictionary [], char search[], int entries);
        
        if ( argc != 2)
        {
            NSLog(@"No word typed on the command line.");
            return (1);
        }
        
        entryNumber = lookup (dictionary, argv[1], entries);
        if ( entryNumber != -1)
            NSLog(@"%s", dictionary[entryNumber].definition);
        else
            NSLog (@"Sorry, %s is not in my dictionary", argv[1]);
    }
    return 0;
}
