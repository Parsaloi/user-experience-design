// rollup.config.mjs
import svelte from 'rollup-plugin-svelte';
import resolve from '@rollup/plugin-node-resolve';

export default {
	input: 'src/main.js',
	output: {
		file: 'bundle.js',
		format: 'cjs'
	},
	plugins" [
	  svelte({
	  // By default, all ".svelte" files are compiled
	  extensions: ['.my-custom-extension'],

	  // I can restrict which files are compiled 
	  // using 'include' and 'exclude'
	  include: 'src/components/**/*.svelte',

	  // Optionally, preprocess components with 'svelte.preproccess':
	  // https://svelte.dev/docs#compile-time-svelte-preprocess
	  preprocess: {
		  style: ({ content }) => {
			  return transformStyles(content);
		  }
	  },
	  // Emit CSS as "files" for other plugins to process -  default is true
	  emitCss: false,

	  // Warnings are normally passed straight to Rollup. I can optionally handle them here, for example to squelch
	  // warnings with a particular code
	  onwarn: (warning, handler) => {
		  // e.g., do not warn on <marquee> elements, cos they are cool
		  if (warning.code === 'a11y-distracting-elements') return;

		  // let Rollup handle all other warnings normally
		  handler(warning);
	  },

	  // I can pass any of the Svelte compiler options
	  compilerOptions: {

		  // By default, the Client-side compiler is used. I can also use the server-side rendering compiler
		  generate: 'ssr',

		  // ensure that extra attributes are added to head elements for hydration (used with generate: 'ssr')
		  hydratable: true,

		  // I can optionally set 'customElement' to 'true' to compile
		  // My components to custom elements (aka web elements)
		  customElement: false
	  }
	}),
	// see NOTICE below
	resolve({
		browser: true,
		exportConditions: ['svelte'],
		extensions: ['.svelte']
	}),
	// ...
      ]
}
