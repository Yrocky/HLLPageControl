## Custom PageControl

一款具有的自定义样式的分页指示控件，具体效果如下：

![demo](demo.gif)

### 特点

具有与`UIPageControl`相似的使用方法以及API，支持代码初始化以及nib初始化。

默认的一些属性设置

```
	/** 当分页数位一个的时候是否自动隐藏 */
	self.hidePageControlWhenSinglePage = YES;
	/** 未选中分页的指示颜色 */    
    self.pageIndicatorTintColor = [UIColor lightGrayColor];
   	/** 当前分页的指示颜色 */
    self.currentPageIndicatorTintColor = [UIColor orangeColor];
    
```

### 如何使用

**代码初始化**

```
	_codePageControl = [[HLLPageControl alloc] initWithFrame:CGRectMake(0, 100, width, 60)];
    _codePageControl.hidePageControlWhenSinglePage = NO;
    _codePageControl.numberOfPages = 5;
    [self.view addSubview:_codePageControl];
```

**nib初始化**

* 第一步，在StoryBoard或者xib中拖出一个`UIView`
* 第二步，将该`UIView`的类设置成`HLLPageControl`
* 第三步，设置所需要的属性

### 待完成

添加改变的动画效果