import std/httpclient

proc getPage*()  :string =
  var client = newHttpClient()
  var url = "https://mkl.lol/xrpc/_health"
  var content = "" 
  try:
    content = client.getContent(url)
  finally:
    client.close()
  return content
  
#var name = askName()
#sayName(name)

var content = getPage()
echo content

# Notice that sometimes you need nix-shell -p openssl
