class Kanri
    @@data = []
  def self.post_mentor
    puts "メンターの名前を入力してください："
    mentor_name = gets.to_s
    puts "年齢を入力してください："
    mentor_year = gets.to_i
    information = Kanri.new(mentor_name, mentor_year)
    @@data << information
    
  end

  def self.index_mentors
    num = 0
    @@data.each do |information|
      puts  "#{num}"
      puts "名前:#{information.mentor_name}"
      puts "年齢:#{information.mentor_year}"
      num = num + 1
    end
    puts "年齢を見たいメンターの番号を入力してください："
    input = gets.to_i
    puts "#{@@data.[input].mentor_name}"
    puts "#{@@data.[input.mentor_year}
  end

  def self.sort_mentors
    puts "メンターの年齢の範囲を設定してください。\n何歳以上のメンターを見ますか："
    s_input = gets
    puts "何歳以下のメンターを見ますか："
    f_input = gets

    # 入力された値に該当する年齢のメンターだけを抽出し年齢降順に並び替える

    # 該当するデータが存在しない場合に「該当するデータは存在しません。」と出力
    # 該当するデータが存在する場合には「該当するメンターは以下のとおりです。」と出力し一覧を表示する
  end

  def initialize(mentor_name, mentor_year)
    @mentor_name = mentor_name
    @mentor_year = mentor_year
  end

  def self.end_program
    puts "ご利用ありがとうございました。"
    exit
  end

  def self.exception
    puts "無効な値です。もう一度入力してください。"
  end
end

num = 0
while true do
  puts "レビュー数：#{num}" # 入力した情報の数に応じて変動させる
  puts "[0]メンターを登録する"
  puts "[1]メンターの一覧を見る"
  puts "[2]メンターを年齢別に見る"
  puts "[3]アプリを終了する"
  input = gets

  if input == 0 then
    Kanri.post_mentor
    num = num + 1
  elsif input == 1 then
    Kanri.index_mentors
  elsif input == 2 then
    Kanri.sort_mentors
  elsif input == 3 then
    Kanri.end_program
  else
    Kanri.exception
  end
end