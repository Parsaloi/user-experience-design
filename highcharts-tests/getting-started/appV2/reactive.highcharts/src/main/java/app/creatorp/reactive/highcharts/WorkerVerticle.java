package app.creatorp.reactive.highcharts;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.StaticHandler;

public class WorkerVerticle extends AbstractVerticle {

	@Override
	public void start(Promise<Void> startPromise) throws Exception {

		Router router = Router.router(vertx);

		router.route().handler(StaticHandler.create("resources/webroot"));
		router.get("/*").handler(ctx -> ctx.reroute("/index.html"));

		
		int httpPort;
		try {
			httpPort = Integer.parseInt(System.getProperty("http.port", "8780"));
		} catch (NumberFormatException nfe) {
			httpPort = 8780;
		}
		

		vertx.createHttpServer()
			.requestHandler(router)
			.listen(httpPort)
			.onSuccess(http -> startPromise.complete())
			.onFailure(startPromise::fail);
	}
}
