import 'dart:html' as html;

/// Query parameters of the current page.
///
/// [Uri.base] resolves against the `<base href>` element, which drops the
/// query string, so the full location is used instead.
Map<String, String> get debugQueryParams =>
    Uri.parse(html.window.location.href).queryParameters;
