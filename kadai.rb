require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {
get = cgi['kadai']

"<html>
  <body>
    <p>ゴーヤーの譲渡先はこちらです</p>
    文字列：#{get}
  </body>
</html>"
}
