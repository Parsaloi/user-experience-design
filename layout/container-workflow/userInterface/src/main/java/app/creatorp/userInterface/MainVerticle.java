package app.creatorp.userInterface;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.StaticHandler;

public class MainVerticle extends AbstractVerticle {

  @Override
  public void start(Promise<Void> startPromise) throws Exception {

	  Router router = Router.router(vertx);

	  router.route().handler(StaticHandler.create("webroot"));
	  router.get("/*").handler(ctx -> ctx.reroute("/index.html"));

	  vertx.createHttpServer()
		  .requestHandler(router)
		  .listen(8081, http -> {
			  if (http.succeeded()) {
				  startPromise.complete();
				  System.out.println("Vert.x Http Server started at port 8081");
			  } else {
				  startPromise.fail(http.cause());
			  }
		  });










	  /* 
	   * Vert.x default stuff
	  vertx.createHttpServer().requestHandler(req -> {
		  req.response()
			  .putHeader("content-type", "text/plain")
			  .end("Hello from Vert.x!");
	  }).listen(8888, http -> {
		  if (http.succeeded()) {
			  startPromise.complete();
			  System.out.println("HTTP server started on port 8888");
		  } else {
			  startPromise.fail(http.cause());
		  }
	  });
	  */
  }
}
