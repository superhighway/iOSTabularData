#import "SLViewController.h"

@interface SLViewController ()
@property (weak, nonatomic) IBOutlet UILabel *symbolLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceBoughtLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;
@end

@implementation SLViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Hardcoded binding
    self.symbolLabel.text = @"RKUNF";
    self.priceBoughtLabel.text = @"USD 15.75";
    self.currentPriceLabel.text = @"USD 14.98";
    self.quantityLabel.text = @"100";
}

@end
