# require 'pg1'
# connection = PG::connect(dbname: "goya")
# connection.internal_encoding = "UTF-8"
# begin
#   connection変数を使いPostgreSQLを操作する
#   .execで、goyaDBに"select weight, give_for from crops;"
#   のSQLの命令文を直接実行し、その結果をresult変数に格納する
#   result = connection.exec(
#     "select quality from crops
#      Where quality = false
#     ;")
#   取り出した各行を処理する
#   result.each do |record|
#       各行を取り出し、putsでターミナル上に出力する
#       puts "品質：#{record["quality"]}"
#   end
# ensure
#   最後に.finishでデータベースへのコネクションを切断する
#   connection.finish
# end
