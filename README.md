# NPTwitterLogin
This Project explains how to get user data from Twitter Login using swift 4.

# Getting Started

Download this project.

Create your project in Twitter's developer site (https://dev.twitter.com/twitterkit/ios/log-in-with-twitter && https://apps.twitter.com)

Configure your plist (replace you **YOUR CONSUMER KEY**)

Then install pods from terminal

  ```
    $ sudo gem install cocoapods
    $ pod init
  ```
  
 In your podfile
 ```
   pod 'TwitterKit',’~> 3.0’
  ``` 
  In terminal
  ```
    $ pod install
  ```
    
 You can run the .xcworkspace project now.
 You will get your data in `twitterParserObj` object in `twitterParsingCompleted(_ twitterParserObj: NPTwitterParser)` delegate method.
 
 # Finally
 You can set set up pods and drag and drop `NPTwitterParser.swift` class in your project.
 
 Thank you for referring. You can always suggest me if we can we do the things in a better way (perveznouman@gmail.com).

# Authors

Nouman Pervez - Initial work - NPTwitterLogin

# License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
