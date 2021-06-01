require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {
get = cgi['kadai2']

"<html>
  <body>
    <p>ゴーヤーの品質はこちらです</p>
    文字列：#{get}
  </body>
</html>"
}
