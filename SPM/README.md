<p align="center">
<img src='https://github.com/HiConceit/CCNextField/blob/master/Example/CCNextField/Images.xcassets/Logo.imageset/CCNextField%402x.png' width="200" />
</p>




# CCNextField

[![Version](https://img.shields.io/cocoapods/v/CCNextField.svg?style=flat)](https://cocoapods.org/pods/CCNextField)
[![License](https://img.shields.io/cocoapods/l/CCNextField.svg?style=flat)](https://cocoapods.org/pods/CCNextField)
[![Platform](https://img.shields.io/cocoapods/p/CCNextField.svg?style=flat)](https://cocoapods.org/pods/CCNextField)

CCNextField is an an extension to `UIKIT's UITextField` with an easy usage to handle switching to the next `UITextField` when tapping the return key. 

```swift
textField.nextField(resigns: true) {
  print("noice")
}
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

### CocoaPods

CCNextField is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CCNextField'
```

### Swift Package Manager

In Xcode with your project open, go to File > Add Packages... > paste the following link in the search bar:

```
https://github.com/HiConceit/CCNextField
```

### Direct

Copy the `CCNextField` file from Source folder.

## Usage

```swift
// Conform your UIViewController/UITableViewConroller to UITextFieldDelegate
class ViewController: UIViewController, UITextFieldDelegate {
    
    // Connect textFields from storyboard
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add all your textFields
        let textFields = [nameTextField,
                          emailTextField,
                          passwordTextField]
        
        // Connect textFields to delegate & set textField.tag
        for field in textFields {
            field!.delegate = self
            field!.tag = textFields.firstIndex(of: field)!
        }
    }
  
	  // Get current textField and call nextField.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Set (resigns) to true to hide keyboard, or false to just execute your function.
        textField.nextField(resigns: true) {
            print("noice")
        }
        return false
    }
}
```


2022 Conceit LLC

## License

CCNextField is available under the MIT license. See the LICENSE file for more info.
