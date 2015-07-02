import std.net.curl;
void main()
{
  auto url = "http://localhost:8080/";
  auto http = HTTP();

  // any CUSTOM request
  trace(url, http);
  // Prefer CUSTOM request by libcurl
  // https://github.com/bagder/curl/blob/master/lib/http.c#L1834
  auto a = get(url, http);
  assert(HTTP.Method.get == http.method);
  assert(a == "GET", a);
}
