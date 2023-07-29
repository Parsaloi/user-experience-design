package app.creatorp.LoginPage;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;

public class MainVerticle extends AbstractVerticle {

  @Override
  public void start(Promise<Void> startPromise) throws Exception {

	  // Instantiate a Http server
	  // HttpServer server = vertx.createHttpServer();


	  // Instantiate a Router object
	  Router router = Router.router(vertx);

	  // Associate the router with a handler
	  // router.route("/static/*").handler(StaticHandler.create());

	  // router.route("/static/*")
		  // .consumes("text/html")
		  // .handler(StaticHandler.create());
	
	  // Instantiate the static handler
	  
	  StaticHandler devPageHandler = StaticHandler.create(vertx);

	  // Now try again to associate router with this instantiated handler
	  router.route("/static/*").handler(devPageHandler);

	  server.requestHandler(router).listen(8081, http -> {
		  if (http.succeeded()) {
			  System.out.println("HTTP Server started on port 8081");
		  } else {
			  startPromise.fail(http.cause());
		  }
	  });
  }
}
