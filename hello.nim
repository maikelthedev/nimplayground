proc askName: string =
  echo "What's your name? "
  var name: string = readLine(stdin)
  return name

proc sayName(name: string) =
  if name == "":
    echo "How's it possible to have no name"
  elif name == "maikel":
    echo "Hi Maikel, welcome to your PC"
  else:
    echo "Hi, ", name, "!"

var name = askName()
sayName(name)
