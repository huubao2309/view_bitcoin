# View Bitcoin Price RealTime

Library: 
+ [http 0.12.0+4](https://pub.dev/packages/http)
+ [html 0.14.0+3](https://pub.dev/packages/html)

![Demo_Price_Coin](https://github.com/huubao2309/view_bitcoin/blob/master/images/gif_load_html.gif)

## Setup

### 1. Setup lib at `pubspec.yaml` file:

```dart
dependencies:
  html: ^0.14.0+3
  http: ^0.12.0+4
```

### 2. Download html file:

Link html download: [https://cryptowat.ch/](https://cryptowat.ch/)

**Parse html**:

```dart
    ...
    final client = Client();
    var response = await client.get(Utils.linkURL); // with linkURL = 'https://cryptowat.ch/'
    final document = parse(response.body);
    final divStr = document.querySelectorAll("div");
    
    for (final divParent in divStr) {
      // ... Parse data to html
    }
    ...
```

### 3. Load Data on ListView:

...
