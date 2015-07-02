import std.net.curl;
void main()
{
  auto http = HTTP();
  auto url = "http://localhost:8080/";
  post(url, "a", http);
  // segmentation fault by trace call after post with content.
  trace(url, http);
}
