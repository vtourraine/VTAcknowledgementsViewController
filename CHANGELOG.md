# Changelog

## 1.2 (work in progress)

- Added `license` property on `VTAcknowledgement`


## 1.1 (27 May 2016)

- Added tvOS support, by Alex Palman (@alexpalman)
- Added `initWithPath:` initializer on `VTAcknowledgementsViewController`
- Added `initWithFileNamed:` convenience initializer on `VTAcknowledgementsViewController`
- Deprecated `initWithAcknowledgementsPlistPath:` on `VTAcknowledgementsViewController` (use `initWithPath` instead)
- Deprecated `initWithAcknowledgementsFileNamed:` on `VTAcknowledgementsViewController` (use `initWithFileNamed` instead)


## 1.0 (10 May 2016)

- Ready for CocoaPods 1.0.0
- Updated default footer text for CocoaPods 1.0.0
- Updated default CocoaPods URL for CocoaPods 1.0.0
- Added `initWithAcknowledgementsFileNamed:` convenience initializer on `VTAcknowledgementsViewController`


## 0.17 (7 December 2015)

- Updated imports to compile when modules are disabled, by Ryota Hayashi (@hayashi311)
- Added `VTAcknowledgementsParser` to extract the plist parser out of the controller, by Vincent Tourraine (@vtourraine)
- Independently builds through Xcode (a.k.a. Carthage support), by Vincent Tourraine (@vtourraine)
- Switched to `SFSafariViewController` when available for CocoaPods website, by Vincent Tourraine (@vtourraine)
- Added Dynamic Type support for header and footer labels and acknowledgement text view, by Vincent Tourraine (@vtourraine)


## 0.16 (18 November 2015)

- Requires Xcode 7
- Added `VTAcknowledgement` designated initializer
- Added generics annotations
- Improved Swift interoperability, by Stefan Pühringer (@b-ray)
- Fixed acknowledgement initial scrolling offset, by Levi Brown (@levigroker)


## 0.15 (2 September 2015)

- Removed `textViewFont` property, added `textView` property for `VTAcknowledgementViewController`
- Improved footer layout, by 柳东原 (@xhacker)
- Added nullability annotations


## 0.14 (16 May 2015)

- Simplified Chinese localization, by Chihya Tsang (@simpleapples)
- Added customizable footer text, by Tamás Tímár (@tamastimar)
- Updated customizable header text to load from acknowledgements file, by Tamás Tímár (@tamastimar)
 

## 0.13 (23 February 2015)

- Improved Dynamic Type support, by Moritz Venn (@ritzmo)
- Unit tests, by Vincent Tourraine (@vtourraine)


## 0.12 (4 October 2014)

- Italian localization, by Mouhcine El Amine (@mouhcine)
- Support for IBInspectable properties


## 0.11 (4 May 2014)

- Portuguese localization, by Michael Brown (@mluisbrown)
- Spanish localization, by Billy Tobon (@billyto)
- Danish localization, by Morten Gregersen (@mortengregersen)
- Improved table view (de)selection, by Philip Kluz (@pkluz)
- Improved iOS 6 support, by Ben (@bcylin)
- Improved Storyboards support, by Syo Ikeda (@ikesyo)


## 0.10 (9 March 2014)

- New `headerText` property for `VTAcknowledgementsViewController`, by Martin Stemmle (@maremmle) and André Mathlener (@macmannes)
- Dutch localization, by André Mathlener (@macmannes)
- Swedish localization, by Aron Manucheri (@manucheri)
- Improved Storyboards support, by André Mathlener (@macmannes)
- Improved documentation, by Paul Friedman (@paulfri)


## 0.9 (22 February 2014)

- Acknowledgements titles sorted with user’s locale
- Customizable title for `VTAcknowledgementsViewController`, by Christian Lobach (@DerLobi)


## 0.8 (2 February 2014)

- New `localizedTitle` class property for `VTAcknowledgementsViewController`
- Update `VTAcknowledgementsViewController` to include a Done button when at bottom of the navigation controller


## 0.7 (22 January 2014)

- Traditional Chinese localization, by Ben (@bcylin)


## 0.6 (16 January 2014)

- German localization, by Sascha Schwabbauer (@sascha)


## 0.5 (12 January 2014)

- Storyboards support, by Taiki Fukui (@yashigani)
- Japanese localization, by Taiki Fukui (@yashigani)


## 0.4 (6 January 2014)

- Tappable CocoaPods URL
- Tappable links in license text view
- French localization


## 0.3 (30 December 2013)

- `VTAcknowledgement` model class
- Public `acknowledgements` property for `VTAcknowledgementsViewController`
- Instructions when no acknowledgements found at runtime


## 0.2 (27 December 2013)

- Non-editable license text view (duh)
- Padding for license text view (iOS 7+ only)
- Customizable font for license text view


## 0.1 (24 December 2013)

Initial import

