@interface TVRowTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;

- (void)bindRowData:(NSArray *)rowData;
@end
