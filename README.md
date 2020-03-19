# Reusable Alert

This is a class mathod of UIViewController to reuse the alert.

If you use this template for alert, you don't have to create instance for alert  at every times.

Please copy the souce code from extension.swift.

# Usage

```

UIViewController.displayAlertOfAlertStyle(viewController: self, title: "your preferred title", message: "your preferred message", rightActionTitle: "OK", rightActionCompletion: {
            print("tapped ok")
        }, leftActionTitle: "Cancel") {
            print("tapped cancel")
        }
        
```
