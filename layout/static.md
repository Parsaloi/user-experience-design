
## Serving static resources
> <https://vertx.io/docs/vertx-web/java/#_serving_static_resources>

Vert.x-Web comes with an out of the box handler for serving static web resources so you can write static web servers very easily

To serve static resources such as `.html`, `.css`, `.js` or any other static resources, you use an instance of `StaticHandler`

Any *requests to paths* handled by the static handler will result in files being served from a directory on the file systen or from the classpath.

The default static file directory is `webroot` but this can be configured

In the following example all requests to paths with `/static/` will get served from the directory `webroot`
```java
router.route("/static/").handler(StaticHandler.create());
```

For example, if there was a request with path `/static/css/mystyles.css` the static serve will look for a file in the directory `webroot/css/mystyles`  
It will also look for a file on the classpath called `webroot/css/mystyle.css` This means you can package up all your static resources int a jar  
(or fatjar) and distribute them like that (compression)  


