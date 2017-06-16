# InspectableButtonBug

Example project for an Xcode crash.


More about this project on the
[following post](http://code.sylvaingamel.fr/xcode,crash,bug,cocoatouch,uikit/2017/06/12/Xcode-crash-with-IBInspectable.html)

You can see the crash issue on the branch `release/v1-xcode-crash-on-inspectable`.

The fix is implemented on `bugfix/v1/xcode-crash-fix` banch.

Lesson to learn: _Swift protocols used in Objective-C objects shall implement `NSObjectProtocol`_.

