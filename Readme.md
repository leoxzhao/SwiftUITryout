#  Things To Try

`@State` and `@Binding` are two keywords to try out. `@State` should trigger view refreshing. `@Binding` can sync
values across different components.

## Single Table Multiple Cell

## Incremental Loading

Maybe it is not necessary at all to even try to do incremental loading. We can just create a list with so many items.
After the table reaches its end, new ones are just incrementally filling the blanks.

A similar question was asked a while back (June 2019).
https://forums.developer.apple.com/thread/118485.
There is no answer yet. SwiftUI's list has many limits.

There is also no easy way to scroll SwiftUI List to a new selection either.
So, **SwiftUI List is no UITableView.** Not even close in features. It is a list of things. A lightweight UITableView if
you will.

## UIViewControllerRepresentable

## Performance

Performance should not be a problem since all are value type. `autolayout` might take many compute resources.

## CoreData and SwiftUI

## Wrapping Native UIViews

## Gestures


## NSHostingView, UIHostingView

## Text Input And Display

## UITextView

There seems no equivalent of UITextView as well. Text can be used like this `Text("Hello") + Text(" World!")`.
It probably produces one single Text.

`Text` can be `.bold()`, `.italic()`, `underline()`, `.strikethrough()`, `.fontWeight()`, `font()`,
`forgroundColor()`, `tracking()`, `.lineLimit()`, and `cornerRadius()`.


## NavigationView

When navigating between views, a NavigationView is needed to allow the app to navigate.
This can be compared to an UINavigationController in UIKit.
