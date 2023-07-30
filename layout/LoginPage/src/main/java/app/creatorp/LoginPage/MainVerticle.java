package app.creatorp.LoginPage;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.StaticHandler;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;

public class MainVerticle extends AbstractVerticle {

  // private static final Logger LOGGER = LoggerFactory.getLogger(MainVerticle.class);

  @Override
  public void start(Promise<Void> startPromise) throws Exception {

	  // LOGGER.info("Starting the application...")

	  Router router = Router.router(vertx);

	  router.route().handler(StaticHandler.create("resources/webroot/"));
	  router.get("/*").handler(ctx -> ctx.reroute("/index.html"));

	  vertx.createHttpServer()
		  .requestHandler(router)
		  .listen(8888);



	  /*
	   * Version 1.0
	  // Instantiate a Http server
	  HttpServer server = vertx.createHttpServer();


	  // Instantiate a Router object
	  Router router = Router.router("/resources/webroot");

	  // Associate the router with a handler
	  router.route().handler(StaticHandler.create("resources/webroot"));
	  router.get("/*").handler(ctx -> ctx.reroute("/index.html"));

	  server.requestHandler(router).listen(8081, http -> {
		  if (http.succeeded()) {
			  System.out.println("HTTP Server started on port 8081");
		  } else {
			  startPromise.fail(http.cause());
		  }
	  });
	  */
  }
}
