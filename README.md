exposeJS
========

ExposeJS gives you the ability to hide/show DOM elements based on the position of other DOM elements within the window.

For example, let's say you want to hide a fixed div, and only show it when the user scrolls to a certain point on the page. That's where Expose comes in. Just put an expose 'marker' in the body, and Expose will hide the fixed element. Then, when the user scrolls to the 'marker', the fixed element will show.


Usage:

<div ex-target="#target_id"></div>


Expose Attributes:

target: The selector for the element you wish to hide/show
transition: The transition between hide/show
position: The point in the window at which you want the transition to happen
reverse: Flips the direction of the scroll to hide/show
