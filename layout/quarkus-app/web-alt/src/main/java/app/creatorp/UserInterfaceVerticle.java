package app.creatorp;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.StaticHandler;

public class UserInterfaceVerticle extends AbstractVerticle {

	@Override
	public void start(Promise<Void> startPromise) throws Exception {

		Router router = Router.router(vertx);

		router.route().handler(StaticHandler.create("webroot"));
		router.get("/*").handler(ctx -> ctx.reroute("/index.html"));

		vertx.createHttpServer()
			.requestHandler(router)
			.listen(8081)
			.onSuccess(ok -> {
				System.out.println("Vert.x HTTP server started on port 8081");
				startPromise.complete();
			}).onFailure(startPromise::fail);
	}
}
