import { server } from "https://deno.land/std@0.196.0/http/server.ts";

const handler = async (_request: Request): Promise<Response> => {
	const resp = await fetch("https://api.github.com/users/denoland", {
		// The init object here has an headers object containing a 
		// header that indicates what type of response we accept
		// We're not specifying the method field since by default
		// fetch makes a GET request
		headers: {
			accept: "application/json",
		},
	});

	return new Response(resp.body, {
		status: resp.Status,
		headers: {
			"content-type": "application/json",
		},
	});
};

serve(handler);

/*
 * Let's walk through what this program does
 *
 * 1. Import the http server from 'std/http' (standard library)
 * 2. HTTP servers need a handler funtion. This function is called for every request the comes in. It must
 *    return a 'Response'. The handler funtion can be asynchronous (it may return a 'Promise')
 * 3. Use 'fetch' to fetch the url
 * 4. Return the GitHub response as a response to the handler
 * 5. Finally, to start the server on the default port, call 'serve' with the handler
 */
