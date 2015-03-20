# LSKRoundedProgressView
Minimal (truly minimal :) rounded progress indicator, which is a clipped version of [KAProgressLabel](https://github.com/kirualex/KAProgressLabel).

Demo(It may takes a little bit long time to load the gif):

![demo.gif](./demo.gif)


## Usage
It behaves like a normal `UIView`.
You set the progress value (a `CGFloat` value, range from 0.0 to 1.0) by operating the following property:

    @property (nonatomic, assign) CGFloat progress;


## Custom 

    @property (nonatomic, assign) BOOL clockWise;
    @property (nonatomic, assign) CGFloat progressWidth;
    @property (nonatomic, strong) UIColor *trackColor;
    @property (nonatomic, strong) UIColor *progressColor;

## Licence
MIT