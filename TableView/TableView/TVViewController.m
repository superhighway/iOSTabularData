#import "TVRowTableViewCell.h"
#import "TVViewController.h"

@interface TVViewController () <
    UITableViewDataSource,
    UITableViewDelegate
>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation TVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableData = @[
                       @[
                         @[@"Stock Symbol:", @"LNKD"],
                         @[@"Price Bought:", @"USD 300"],
                         @[@"Current Price:", @"USD 300"],
                         @[@"Quantity:", @"10"]
                        ],
                       @[
                         @[@"Profit/Loss:", @"0"],
                         @[@"ROI:", @"0%"]
                        ]
                      ]; // dummy
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.tableData.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TVRowTableViewCell";
    TVRowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell bindRowData:self.tableData[indexPath.section][indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] initWithFrame:CGRectZero];
}

@end
