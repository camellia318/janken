def janken
  
  puts("じゃんけん、あっち向いてホイをしましょう")
  puts("「グー」なら0を、「チョキ」なら1を、「パー」なら2を入力して、")
  puts("Enterキーを押してください")
  puts("じゃんけん、ぽん!")

  #あなたの手
  a = gets.to_i

  #わたしの手として、1〜3の間の乱数を生成（0→グー、1→チョキ、2→パー、とする）
  b = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[a]}, わたしの手:#{jankens[b]}"

  #じゃんけん結果に応じた勝敗の文言を生成
  if a == b
    puts("あいこ、もう１回")
    return true
  #相手の勝ちパターン  
  elsif (a == 0 && b == 1) || (a == 1 && b== 2) || (a == 2 && b == 0) 
    puts("あっち向いて〜")
    puts("0(上、)1(下)、2(右)、3(左)、を入力して下さい")
    
    c = gets.to_i  #あなたの指
    d = rand(4)  #わたしの指
    
    puts("ホイ")
    
    yubisashi = ["0(上)","1(下)","2(右)","3(左)"]
    
    puts "あなた:#{yubisashi[c]}を指しました, わたし:#{yubisashi[d]}を指しました"
    
    if c == d
      puts("あなたの勝ちです")
    else
      puts("残念、あなたの負けです")
    end 
 
  #自分の勝ちパターン  
  elsif (a == 0 && b == 2) || (a == 1 && b == 0) || (a == 2 && b == 1)
    puts("あっち向いて〜")
    puts("0(上)、1(下)、2(右)、3(左)、を入力して下さい")
    
    e = gets.to_i
    f = rand(4)
    
    puts("ホイ")
    
    yubisashi2 = ["0(上)","1(下)","2(右)","3(左)"]
    
    puts "あなた:#{yubisashi2[e]}を指しました, わたし:#{yubisashi2[f]}を指しました"
    
    if e == f
      puts("負けました")
    else
      puts("残念") 
    end 
    
  end
  

next_game = true 

while next_game do # next_gameがtrue(あいこ)の間は繰り返し。
  next_game = janken 
end

end

#メソッドを実行
janken