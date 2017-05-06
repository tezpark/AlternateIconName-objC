[![GitHub platform](https://img.shields.io/badge/platform-ios-lightgrey.svg)]()
[![GitHub version](https://img.shields.io/badge/version-iOS%20%20(%3E%3D10.3)-brightgreen.svg)]()
[![GitHub language](https://img.shields.io/badge/language-objective--c-6BAEE4.svg)]()
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/tezpark/AlternateIconName-objC/master/LICENSE)

# AlternateIconName-objC
AlternateIconName for objective-C


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




# License
MIT License

Copyright (c) 2017 Tez Park

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
