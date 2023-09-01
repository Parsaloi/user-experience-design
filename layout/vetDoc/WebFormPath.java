package app.creatorp.webFormPath;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;

import io.vertx.core.http.HttpHeaders;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.BodyHandler;

public class WebFormPath extends AbstractVerticle {

	@Override
	public void start(Promise<Void> startPromise) throws Exception {

		// Start Router
		Router router = router.router(vertx);

		// Enable multipart form data parsing...(It's the default)
		// router.route().handler(BodyHandler.create());

		// Define routes
		router.route("/").handler(routingContext -> {
			routingContext.response().putHeader("content-type", "text/html").end()
		})


	}
}
