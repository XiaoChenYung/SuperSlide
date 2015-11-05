//
//  TableView.m
//  SuperSlide
//
//  Created by 杨晓晨 on 15/11/5.
//  Copyright © 2015年 杨晓晨. All rights reserved.
//

#import "TableView.h"

@interface TableView () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation TableView

+ (TableView *)tableView {
    
    TableView *tView = [[self alloc] init];
    tView.delegate = self;
    return tView;
}

static NSString *TableCell = @"TableCell";

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableCell];
    }
    cell.textLabel.text = @"杨晓晨";
    return cell;
}
@end
