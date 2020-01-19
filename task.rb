# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  # Q1. 次の配列に "斎藤" を追加し，出力して下さい。
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  p names

end

def q2
  # Q2. 次の二つの配列を合体させた新しい配列 `array` を作成し，出力して下さい。
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  p array

end

def q3
  # Q3. 次の配列の中に `3` がいくつあるかを出力するコードを書いて下さい。
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)

end

def q4
  # Q4. 次の配列から `nil` の要素を削除し，出力して下さい。（新しい配列を作成せずに実現して下さい）
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  p sports.compact!

end

def q5
  # Q5. 配列が空であれば `true`，1つ以上の要素があれば `false` を出力するコードを書いて下さい。
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts array1.empty?
  puts array2.empty?

end

def q6
  # Q6. 次の配列から，期待された結果の配列 `numbers2` を作成し，出力して下さい。
  # 期待する配列
  # [10, 20, 30, 40, 50]
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map {|number| number * 10}

  p numbers2

end

def q7
  # Q7. 次の配列の要素を `文字列` から `数字` に変換し，出力して下さい。（新しい配列を作成せずに実現して下さい）
  # 期待する配列
  # [1, 2, 3, 4, 5]
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  p array.map!(&:to_i)

end

def q8
  # Q8. 期待する出力結果になるようにコードを書き加えて下さい。
  # 
  # ["Ruby", "Php", "Python", "Javascript"]
  # ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)

  upper_case_programming_languages =
  programming_languages.map(&:upcase)

  p programming_languages
  p upper_case_programming_languages
end

def q9
  # Q9. 次の配列を用いて，期待通りの出力結果になるようにコードを書いて下さい。
  # 期待結果
  # 会員No.1 田中さん
  # 会員No.2 佐藤さん
  # 会員No.3 佐々木さん
  # 会員No.4 高橋さん
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i} #{name}さん"
  end
end

def q10
  # Q10. 次の配列の各要素について， `うに` という文字列が含まれていれば「好物です」と表示し，そうでなければ「まぁまぁ好きです」と出力するコードを書いて下さい。
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?('うに')
      puts "「好物です」"
    else
      puts "「まぁまぁ好きです」"
    end
  end
end

def q11
  # Q11. 次の配列を用いて，期待する出力結果になるようにコードを書いて下さい。
  # 期待する出力結果
  # ユーザーの趣味一覧
  # No1 サッカー
  # No2 バスケ
  # No3 野球
  # No4 フットサル
  # No5 水泳
  # No6 ハンドボール
  # No7 卓球
  # No8 ボルダリング
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  sports.flatten!.uniq!
  
  puts "ユーザーの趣味一覧"
  
  sports.each.with_index(1) do |sport, i|
    puts "No#{i} #{sport}"
  end

end

def q12
  # Q12. 次のハッシュから `name` の値を出力して下さい。
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  # Q13. 次の `user_data` に，`update_data` の内容を反映させ，`user_data` の内容を書き換え，出力して下さい。
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  p user_data.update(update_data)

end

def q14
  # Q14. 次の配列から全てのキーを取り出した配列を作成し，出力して下さい。
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  array = data.keys
  p array

end

def q15
  # Q15. `age` というキーが含まれている場合は OK ，含まれていない場合は NG が出力されるコードを書いて下さい。
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  array = [data1, data2]

  array.each do |data|
    puts data.include?(:age) ? "OK" : "NG"
  end   
end

def q16
  # Q16. 次の配列の各要素について，「私の名前は〜です。年齢は〜歳です。」と表示して下さい。
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

# Q17. 次の Userクラス 内にコードを追加し，期待する出力結果になるようにして下さい。
# 期待する出力結果

# 名前：神里
# 年齢：32
# 性別：男
# 管理者権限：有り
# -------------
# 名前：あじー
# 年齢：32
# 性別：男
# 管理者権限：無し

class UserQ17
  # 以下に回答を記載
  attr_reader :name, :age, :gender, :admin

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end

  def info
    puts <<~EOS
      "名前：#{@name}"
      "年齢：#{@age}"
      "性別：#{@gender}"
      "管理者権限：#{@admin}"
    EOS
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

# Q18. 年齢を用いた場合分けを利用して，期待する出力結果になるようなUserクラスを作成して下さい。
# 期待する出力結果

# こんにちは，あじーと申します。宜しくお願いいたします。
# はいさいまいど〜，ゆたぼんです！！！

class UserQ18
  # 以下に回答を記載
  attr_reader :name, :age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    if @age >= 20
      puts "こんにちは，#{@name}と申します。宜しくお願いいたします。"
    else
      puts "はいさいまいど〜，#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

# Q19. 次のコードはエラーが出ます。期待する出力結果となるようにコードを修正して下さい。

# 期待する出力結果
# ゼロ秒思考

class Item
  # 以下を修正して下さい
  attr_reader :name

  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

# Q20. 次の仕様を満たした上で，期待する出力結果になるようにコードを追加して下さい。
# 年齢区分は，幼児(0〜5歳)，子供(6〜12歳)，成人(13〜64歳)，シニア(65〜120歳)の4パターンとします。（この範囲外の年齢については対処しなくてOKです）
# 期待する出力結果

# たまさんの入場料金は 0 円です。
# ゆたぼんさんの入場料金は 400 円です。
# あじーさんの入場料金は 800 円です。
# ぎんさんの入場料金は 500 円です。

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
end

class Zoo
  # 以下に回答を記載
  attr_reader :name, :entry_fee

  def initialize(**params)
    @name = params[:name]
    @entry_fee = params[:entry_fee]
  end

  def info_entry_fee(user)
    case user.age
    when 0..5
      puts "#{user.name}さんの入場料金は #{@entry_fee[:infant]} 円です。"
    when 6..12
      puts "#{user.name}さんの入場料金は #{@entry_fee[:children]} 円です。"
    when 13..64
      puts "#{user.name}さんの入場料金は #{@entry_fee[:adult]} 円です。"
    when 65..120
      puts "#{user.name}さんの入場料金は #{@entry_fee[:senior]} 円です。"
    end
  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end