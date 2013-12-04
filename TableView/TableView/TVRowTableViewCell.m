#import "TVRowTableViewCell.h"

@implementation TVRowTableViewCell

- (void)bindRowData:(NSArray *)rowData {
    self.leftLabel.text = rowData[0];
    self.rightLabel.text = rowData[1];
}

@end
