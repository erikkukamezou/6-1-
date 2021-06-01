# require 'pg1'
# connection = PG::connect(dbname: "goya")
# connection.internal_encoding = "UTF-8"
# begin
#   connection変数を使いPostgreSQLを操作する
#   .execで、goyaDBに"select weight, give_for from crops;"
#   のSQLの命令文を直接実行し、その結果をresult変数に格納する
#   result = connection.exec(
#     "select give_for from crops
#      where give_for ! = '自家消費'
#     ;")
#   取り出した各行を処理する
#   result.each do |record|
#       各行を取り出し、putsでターミナル上に出力する
#       puts "譲渡先 ：#{record["give_for"]}"
#   end
# ensure
#   最後に.finishでデータベースへのコネクションを切断する
#   connection.finish
# end
