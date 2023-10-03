import 'dart:html';
import 'package:mdc_web/mdc_web.dart';

void main() {
	/// Automatically creates MDC-Web Components from html elements that have a `data-mdc-auto-init="<class>"` attribute
	autoInit():
		/// Programatically add a ripple to all elements with a class that includes "mdc-button"
		querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}

/*void main() {
	querySelector('#output')?.text = 'Your Dart app is running.';
}*/
