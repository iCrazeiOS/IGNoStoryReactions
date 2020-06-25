@interface IGStoryQuickReactionsView : UIView
@property (nonatomic, assign, readwrite, getter = isHidden) BOOL hidden;
@end

%group Hooks
	%hook IGStoryQuickReactionsView
	-(void)setFrame:(CGRect)arg1 {
		%orig;
		self.hidden = YES;
	}
	%end
%end

%ctor {
	dlopen([[[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"Frameworks/InstagramAppCoreFramework.framework/InstagramAppCoreFramework"] UTF8String], RTLD_NOW);
	%init(Hooks);
}