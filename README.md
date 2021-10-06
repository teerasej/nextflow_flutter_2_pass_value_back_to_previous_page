# nextflow_select_value_return_back

A new Flutter project. that demonstrates how to put value back from a widget that was pushed from originate.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## How to navigate to new widget and prepare for value that will be put back

whenever you need to navigate to new widget (as an app's page, etc). A simple way to do is using `Navigator.push()`

```dart
Navigator.push(
    context,
    MaterialPageRoute(
    builder: (BuildContext context) {
        return OptionPage();
    },
    ),
// .then() method will invoke given function after Navigator.pop(), the value will be passed into function as a parameter 
).then(
    (value) {
        // if you want to rebuild widget, feel free to setState here
        setState(() {
            _selectedChoice = value;
        });
    },
);
```

In the `option_page.dart`, we invoke `Navigator.pop()`, passing context, and yes, the value you want to pass back to the initiator widget.

```dart
body: ListView.builder(
    itemBuilder: (BuildContext context, int index) {
        var choice = _choices[index];

        return ListTile(
        title: Text(choice),
        onTap: () {

            // passing context and the value you want to send it back to previous widget.
            Navigator.pop(context, choice);
            
        },
        );
    },
    itemCount: _choices.length,
),

```