#
#   <head>
#     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
#   </head>
#   <body>
#     <h1>テスト！！！！！！！！！！！！！</h1>
#     <% require 'pg' %>
#     <% connection = PG::connect(dbname: "goya") %>
#     <% connection.internal_encoding = "UTF-8" %>
#     <form action="indicate.cgi" method="POST">
#        下記に文字を入力してください<br><br>
#       <input type="text"  name="input" ><br>
#       <input type="submit" name="送信" >
#     </form>
#     <% result = connection.exec("select weight, give_for from crops;") %>
#     <% data = [] %>
#     <% result.each do |record| %>
#       <%  data << "ゴーヤの大きさ：#{record["weight"]}　売った相手：#{record["give_for"]}" %>
#     <% end %>
#     <form action="goya.cgi" method="POST">
#        下記のボタンを押すと、ゴーヤの大きさと売った相手の情報ページに飛びます<br><br>
#        <!-- valueには、送りたいデータを代入する -->
#        <!-- name="goya"を、情報の目印とする -->
#       <input type="text" name="goya" value="<%= data.join(' ') %>">
#       <input type="submit" name="送信" >
#     </form>
#     <form action="kadai.cgi" method="post">
#        <p>譲渡先について</p>
#        <input type="text" name="kadai" value="<%= data.join(' ') %>">
#        <input type="submit" name="送信" value="">
#     </form>
#     <form  action="kadai.cgi" method="post">
#        <p>品質について</p>
#        <input type="text" name="kadai2" value="<%= data.join(' ') %>">
#        <input type="submit" name="送信" value="">
#     </form>
#
#   </body>
# </html>
