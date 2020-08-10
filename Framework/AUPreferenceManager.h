@interface PreferenceManager: NSObject
+(void)initWithBundleID:(NSString *)bundleID;
+(void)register:(NSString * )preferenceName;
@end