# Changelog

## 1.5.1 (4 December 2018)

- Improve Dynamic Type support, by @kiancheong

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.5...1.5.1)


## 1.5 (18 September 2018)

- Filter out manual line wrapping from licenses text

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.4.1...1.5)


## 1.4.1 (25 June 2018)

- Fix text view inset on `VTAcknowledgementViewController` (support layout margins, safe area insets)
- Update deprecated method
- Remove support for “readable content guide” on `VTAcknowledgementViewController`

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.4...1.4.1)


## 1.4 (25 January 2018)

- Update `VTAcknowledgementsViewController` default `acknowledgementsViewController` initializer with plist file name based on bundle name (`Pods-#BUNDLE-NAME#-acknowledgements.plist`)
- Update deployment target to iOS 8.0
- Fix “Semantic Issue” warnings about API availability

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.3...1.4)


## 1.3 (15 September 2017)

- Support “readable content guide” on `VTAcknowledgementViewController`
- Fix iPhone X layout
- Update `VTAcknowledgement` public interface to explicitly mark `init` method as unavailable

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.2.1...1.3)


## 1.2.1 (30 January 2017)

- Improve bundle handling for dynamic frameworks, by Maximilian Landsmann (@landsi)
- Improve umbrella header for better Swift support, by Marcus Kida (@kimar)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.2...1.2.1)


## 1.2 (21 October 2016)

- Added `license` property on `VTAcknowledgement`
- Updated `VTAcknowledgementsViewController` view configuration, by Tobias Tiemerding (honkmaster)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.1...1.2)


## 1.1 (27 May 2016)

- Added tvOS support, by Alex Palman (@alexpalman)
- Added `initWithPath:` initializer on `VTAcknowledgementsViewController`
- Added `initWithFileNamed:` convenience initializer on `VTAcknowledgementsViewController`
- Deprecated `initWithAcknowledgementsPlistPath:` on `VTAcknowledgementsViewController` (use `initWithPath` instead)
- Deprecated `initWithAcknowledgementsFileNamed:` on `VTAcknowledgementsViewController` (use `initWithFileNamed` instead)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/1.0...1.1)


## 1.0 (10 May 2016)

- Ready for CocoaPods 1.0.0
- Updated default footer text for CocoaPods 1.0.0
- Updated default CocoaPods URL for CocoaPods 1.0.0
- Added `initWithAcknowledgementsFileNamed:` convenience initializer on `VTAcknowledgementsViewController`

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.17...1.0)


## 0.17 (7 December 2015)

- Updated imports to compile when modules are disabled, by Ryota Hayashi (@hayashi311)
- Added `VTAcknowledgementsParser` to extract the plist parser out of the controller, by Vincent Tourraine (@vtourraine)
- Independently builds through Xcode (a.k.a. Carthage support), by Vincent Tourraine (@vtourraine)
- Switched to `SFSafariViewController` when available for CocoaPods website, by Vincent Tourraine (@vtourraine)
- Added Dynamic Type support for header and footer labels and acknowledgement text view, by Vincent Tourraine (@vtourraine)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.16...0.17)


## 0.16 (18 November 2015)

- Requires Xcode 7
- Added `VTAcknowledgement` designated initializer
- Added generics annotations
- Improved Swift interoperability, by Stefan Pühringer (@b-ray)
- Fixed acknowledgement initial scrolling offset, by Levi Brown (@levigroker)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.15...0.16)


## 0.15 (2 September 2015)

- Removed `textViewFont` property, added `textView` property for `VTAcknowledgementViewController`
- Improved footer layout, by 柳东原 (@xhacker)
- Added nullability annotations

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.14...0.15)


## 0.14 (16 May 2015)

- Simplified Chinese localization, by Chihya Tsang (@simpleapples)
- Added customizable footer text, by Tamás Tímár (@tamastimar)
- Updated customizable header text to load from acknowledgements file, by Tamás Tímár (@tamastimar)
 
[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.13...0.14)


## 0.13 (23 February 2015)

- Improved Dynamic Type support, by Moritz Venn (@ritzmo)
- Unit tests, by Vincent Tourraine (@vtourraine)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.12...0.13)


## 0.12 (4 October 2014)

- Italian localization, by Mouhcine El Amine (@mouhcine)
- Support for IBInspectable properties

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.11...0.12)


## 0.11 (4 May 2014)

- Portuguese localization, by Michael Brown (@mluisbrown)
- Spanish localization, by Billy Tobon (@billyto)
- Danish localization, by Morten Gregersen (@mortengregersen)
- Improved table view (de)selection, by Philip Kluz (@pkluz)
- Improved iOS 6 support, by Ben (@bcylin)
- Improved Storyboards support, by Syo Ikeda (@ikesyo)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.10...0.11)


## 0.10 (9 March 2014)

- New `headerText` property for `VTAcknowledgementsViewController`, by Martin Stemmle (@maremmle) and André Mathlener (@macmannes)
- Dutch localization, by André Mathlener (@macmannes)
- Swedish localization, by Aron Manucheri (@manucheri)
- Improved Storyboards support, by André Mathlener (@macmannes)
- Improved documentation, by Paul Friedman (@paulfri)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.9...0.10)


## 0.9 (22 February 2014)

- Acknowledgements titles sorted with user’s locale
- Customizable title for `VTAcknowledgementsViewController`, by Christian Lobach (@DerLobi)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.8...0.9)


## 0.8 (2 February 2014)

- New `localizedTitle` class property for `VTAcknowledgementsViewController`
- Update `VTAcknowledgementsViewController` to include a Done button when at bottom of the navigation controller

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.7...0.8)


## 0.7 (22 January 2014)

- Traditional Chinese localization, by Ben (@bcylin)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.6...0.7)


## 0.6 (16 January 2014)

- German localization, by Sascha Schwabbauer (@sascha)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.5...0.6)


## 0.5 (12 January 2014)

- Storyboards support, by Taiki Fukui (@yashigani)
- Japanese localization, by Taiki Fukui (@yashigani)

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.4...0.5)


## 0.4 (6 January 2014)

- Tappable CocoaPods URL
- Tappable links in license text view
- French localization

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.3...0.4)


## 0.3 (30 December 2013)

- `VTAcknowledgement` model class
- Public `acknowledgements` property for `VTAcknowledgementsViewController`
- Instructions when no acknowledgements found at runtime

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.2...0.3)


## 0.2 (27 December 2013)

- Non-editable license text view (duh)
- Padding for license text view (iOS 7+ only)
- Customizable font for license text view

[Full Changelog](https://github.com/vtourraine/VTAcknowledgementsViewController/compare/0.1...0.2)


## 0.1 (24 December 2013)

Initial import

