#import "CSAppSwitcherCollectionViewCell.h"
#import <UIKit/UIImage+Private.h>

@implementation CSAppSwitcherCollectionViewCell {
	NSString *_appIdentifier;
	UIImageView *_appIconImageView;
}

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		_appIconImageView = [[UIImageView alloc] init];
		_appIconImageView.frame = CGRectMake(0, 0, 55.0, 55.0);
		_appIconImageView.center = self.contentView.center;
		[self.contentView addSubview:_appIconImageView];
	}
	return self;
}

- (void)setAppIdentifier:(NSString *)appIdentifier {
	_appIdentifier = appIdentifier;
	_appIconImageView.image = [UIImage _applicationIconImageForBundleIdentifier:_appIdentifier format:MIIconVariantDefault scale:[[UIScreen mainScreen] scale]];
}

- (NSString *)appIdentifier {
	return _appIdentifier;
}

@end
