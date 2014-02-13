ExposeJS
========

ExposeJS gives you the ability to hide/show DOM elements based on the position of other DOM elements within the window.

For example, let's say you want to hide a fixed div, and only show it when the user scrolls to a certain point on the page. That's where Expose comes in. Just put an expose 'marker' in the body, and Expose will hide the fixed element. Then, when the user scrolls to the 'marker', the fixed element will show.


###Usage:

```
<div ex-target="#target_id"></div>
```

####Expose Attributes:

| Attribute Name | Desciption | Options | Default |
|----------------|------------|---------|---------|
| target | The selector for the element you wish to hide/show | Type, Class, Id | NA | 
| transition | The transition between hide/show | fade, none | none |
| position | The point in the window at which you want the transition to happen | top, middle, bottom | top |
| reverse | Flips the direction of the scroll to hide/show | true, false | false |


####Example with all attributes

```
<div ex-target="#target_id" ex-transition="fade" ex-position="middle" ex-reverse="true"></div>
```
