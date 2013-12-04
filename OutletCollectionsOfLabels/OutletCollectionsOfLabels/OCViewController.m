#import "OCViewController.h"

@interface OCViewController ()
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *nameLabels;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *valueLabels;
@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *names = @[@"Symbol => ", @"Bought => ", @"Current => ", @"Qty => "];
    NSArray *values = @[@"LNKD", @"USD 350", @"USD 300", @"80"];
    for (NSInteger i = 0; i < names.count; ++i) {
        [(UILabel *)self.nameLabels[i] setText:names[i]];
        [(UILabel *)self.valueLabels[i] setText:values[i]];
    }
}

@end
