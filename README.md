# AlternateAppIcon-example-objC
AlternateAppIcon example for objective-C


# Info
In iOS 10.3, the function to change app icons has been added, which allows you to change the icon without updating the app.

![32b5f3c3c54af67507dbaeff58ab43fe](https://cloud.githubusercontent.com/assets/389004/24396460/3db354da-13de-11e7-8d77-e378361476ad.gif)


# How to add
## In Project
* minimum target version : iOS 10.3
* Add the alternate icons onto project
  * I haven't found a way to use Assets yet
* Add CFBundleIcons parameter in app’s Info.plist file
  * reference : [Apple API Reference](https://developer.apple.com/reference/uikit/uiapplication/2806818-setalternateiconname?language=objc)

```objective-c
// Info.plist
...
<key>CFBundleIcons</key>
<dict>
    <key>CFBundleAlternateIcons</key>
    <dict>
        <key>icon_type_1</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>icon1</string>  // <- added the alternate icon name
            </array>
            <key>UIPrerenderedIcon</key>
            <false/>
        </dict>
        <key>icon_type_2</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>icon2</string>
            </array>
            <key>UIPrerenderedIcon</key>
            <false/>
        </dict>
        <key>icon_type_3</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>icon3</string>
            </array>
            <key>UIPrerenderedIcon</key>
            <false/>
        </dict>
    </dict>
    <key>CFBundlePrimaryIcon</key>
    <dict>
        <key>CFBundleIconFiles</key>
        <array>
            <string>AppIcon60x60</string> // <- Assets AppIcon
        </array>
    </dict>
</dict>
...
```

## In Code
* Setting the alertnate Icon

```objective-c
if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;
    
[[UIApplication sharedApplication] setAlternateIconName:@"icon_type_1" //AlternateIcons key name
                                      completionHandler:^(NSError * _Nullable error) {
                                          NSLog(@"%@", [error description]);
                                      }];
```

* Reset to the primary icon

```objective-c
if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;

[[UIApplication sharedApplication] setAlternateIconName:nil
                                      completionHandler:^(NSError * _Nullable error) {
                                          NSLog(@"%@", [error description]);
                                      }];
```



# Example code 
[https://github.com/tezpark/AlternateAppIcon-example-objC](https://github.com/tezpark/AlternateAppIcon-example-objC)
