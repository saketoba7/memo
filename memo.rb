require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

Number = gets.to_i

if Number == 1
  puts "拡張子を除いたファイル名を入力してください"
  csvfile = gets.chomp

 puts "メモを入力"
 content = gets.chomp
 puts "入力後、Ctrl + D で保存"
  
CSV.open("#{csvfile}.csv","a") do |csv|
      csv << ["#{content}"]
    end
 
elsif Number ==2
  puts "編集したいファイル名を入力してください"
   csvfile_n = gets.chomp
    puts "編集したい内容を入力してください"
    puts "入力後、Ctrl + D で保存"
    content_n = gets.chomp
   CSV.open("#{csvfile_n}.csv","a") do |csv|
      csv << ["#{content_n}"]
    end
end
