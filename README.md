# Make a Bean Blink On an iOS App

In this tutorial, we will guide you on how to implement the Bean's iOS SDK.  We will be building an app that has a button and a label.  When you press the button, the label's text will change and the Bean will blink its onboard RGB LED.  

After this tutorial, you should have a good step forward in implementing our SDK into your projects or prototypes.

Checkout the [Bean](https://punchthrough.com/bean-from-wireframe)! You can find the more info on the [Bean's iOS SDK](https://github.com/PunchThrough/Bean-iOS-OSX-SDK) so that the app knows how to communicate to the Bean. The reference documentation for the SDK can be found [here](https://punchthrough.com/files/bean/sdk-docs/index.html).

To learn how to use the Bean, visit the [Getting started guide](https://www.punchthrough.com/bean/guides/getting-started/intro/)

# Versions

|  Version | Description |
|---|---|
|[v1](https://github.com/PunchThrough/BeanBlinkOnButtonPress/releases/tag/v1)| Created a story board for the app + implemented button logic|
|[v2](https://github.com/PunchThrough/BeanBlinkOnButtonPress/releases/tag/v2)| Implemented Bean's SDK|

# How to Use this App

Download the latest app using `git clone` directly. Optionally, download one of the releases directly by clicking on one of the links in the versions section.

Also, if you are using `v2` make sure to update the pods:

```
$ pod install
```

Afterwards, rebuild the project in Xcode (`cmd+b`);

# License

The MIT License (MIT)
Copyright (c) <2016> <Punch Through Design>

# Troubleshooting

Have a question about this tutorial, Bean, or code?  Reach out on [BeanTalk](beantalk.punchthrough.com).
