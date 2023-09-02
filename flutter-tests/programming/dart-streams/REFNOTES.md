
> Simone Alessandria (2023)
## Using Dart Streams

In this demo, we will change the *background color* of a screen each second :)  

- We will create a `list` of five colors,  
- and every second we will change the background color of a `Container` widget that fills the whole screen

The color information will be *emitted* from a `Stream` of data. The main screen will need to *listen* to the `Stream` to get the current `Color`,  
and update the background accordingly.

While changing a color isn't exactly something that strictly requires a `Stream`, the principles explained here may apply to more complex scenarios, including:  
- getting flows of data from a web service. :)  
> For instance, I could write a chat app that updates the content based on what users write in real time :)
- or an app that shows stock prices in real time

> SIDE NOTE/ <https://en.wikipedia.org/wiki/Lint_(software)>  
> > **Lint** is the computer science term for a `static code analysis` tool used to flag programming errors, bugs, stylistic errors, and suspicious constructs.  
The term originates from a `UNIX utility` that examined `C language` source code. A program which performs this funtion is also known as a `linter`
