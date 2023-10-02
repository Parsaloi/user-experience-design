# Build-time Error encountered
# 
# Associated with java.io.StringWriter
java.io.StringWriter

# Exception:
NoClassDeffoundError -> 
Exception in thread "vert.x-eventloop-thread-1" java.lang.NoClassDeffoundError: Could not initialize class java.lang.StringBuffer

#
# Logs:
> Task :run
Oct 02, 2023 5:52:49 PM io.vertx.core.impl.launcher.commands.Watcher
INFO: Watched paths: [/home/parsa/Documents/creatorp/mini-projects/user-experience-design/highcharts-tests/getting-started/appV2/reactive.highcharts/./src]
Oct 02, 2023 5:52:49 PM io.vertx.core.impl.launcher.commands.Watcher
INFO: Starting the vert.x application in redeploy mode
Starting vert.x application...
f66ffbd6-87ce-466c-89f9-c2734168338b-redeploy
Oct 02, 2023 5:52:50 PM io.vertx.core.impl.launcher.commands.VertxIsolatedDeployer
INFO: Succeeded in deploying verticle
Exception in thread "vert.x-eventloop-thread-1" java.lang.NoClassDefFoundError: Could not initialize class java.lang.StringBuffer
        at java.base/java.io.StringWriter.<init>(StringWriter.java:50)
        at java.logging/java.util.logging.SimpleFormatter.format(SimpleFormatter.java:174)
        at java.logging/java.util.logging.StreamHandler.publish(StreamHandler.java:199)
        at java.logging/java.util.logging.ConsoleHandler.publish(ConsoleHandler.java:95)
        at java.logging/java.util.logging.Logger.log(Logger.java:980)
        at io.netty.util.internal.logging.JdkLogger.log(JdkLogger.java:606)
        at io.netty.util.internal.logging.JdkLogger.warn(JdkLogger.java:482)
        at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:1000)
        at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)
        at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)
        at java.base/java.lang.Thread.run(Thread.java:833)
<==========---> 80% EXECUTING [35s]
> :run
