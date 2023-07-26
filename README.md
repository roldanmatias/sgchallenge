# sgassignment

In this assignment, I have implemented setup capacitor as a host application, developed a custom capacitor plugin in order to close the gap between a web stack based application and the native world. 

### Running this example

To run the provided example, you can use `npm start` command.

```bash
npm start
```

After any change use these commands:

```bash
npm run build
npx cap sync
```

## Screenshots

![App Screenshot](https://github.com/roldanmatias/sgchallenge/blob/main/screenshots/screenshot1.png)

![App Screenshot](https://github.com/roldanmatias/sgchallenge/blob/main/screenshots/screenshot2.png)


## Architecture

I have used MVVM architecture to desacople all responsibilities:
Assignment uses ViewModel: here the ViewModel is just a simple class but in the future we can use this ViewModel to track events and errors or add business logic.

ViewModel uses Repository: the Repository is responsable to get data from API

Model:
Structs to contains API response and handle data

## Console Logs

API Response log:

Track(audio: "https://public.softgames.com/code-challenge/Oceansound.mp3", cover: "https://public.softgames.com/code-challenge/Oceansound.png", title: "Oceansound", totalDurationMs: 14448.0)
Track(audio: "https://public.softgames.com/code-challenge/Nightlife.mp3", cover: "https://public.softgames.com/code-challenge/Nightlife.png", title: "Nightlife", totalDurationMs: 15696.0)
Track(audio: "https://public.softgames.com/code-challenge/Waking_Me.mp3", cover: "https://public.softgames.com/code-challenge/Waking_Me.png", title: "Waking Me", totalDurationMs: 13776.0)

{"value":["https:\/\/public.softgames.com\/code-challenge\/Oceansound.png","https:\/\/public.softgames.com\/code-challenge\/Nightlife.png","https:\/\/public.softgames.com\/code-challenge\/Waking_Me.png"]}

JS Log:
[log] - ["https://public.softgames.com/code-challenge/Oceansound.png","https://public.softgames.com/code-challenge/Nightlife.png","https://public.softgames.com/code-challenge/Waking_Me.png"]


## Unit Tests

AssignmentTests: testGetLatestCover
Test real flow and check API Response

RepositoryTests: testDecodeJson
Test json parse using local json


### Author

Matias Leandro Martin Roldan
roldanmatias@gmail.com
