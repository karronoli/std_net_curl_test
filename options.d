import std.net.curl;
void main()
{
  auto http = HTTP();
  auto url = "http://localhost:8080/";
  auto a = options(url, "1", http);
  assert(a == "2", a);
}
