import std.net.curl;
void main()
{
  auto http = HTTP();
  auto url = "http://localhost:8080/";
  auto a = put(url, "", http);
  assert(a == "PUT", a);
  // Change to PUT after PUT by libcurl
  // https://github.com/bagder/curl/blob/master/lib/http.c#L1830
  auto b = post(url, "", http);
  assert(b == "POST", b);
}
