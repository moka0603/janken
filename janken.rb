def start
  puts "じゃんけん　...."
  puts "グー（１）　　チョキ（２）　　　パー（３）"
  jan = gets.to_i
  puts "ぽい！"
  puts "-----------------"
  
  if jan == 1
    puts "あなた:グー"
  elsif jan == 2
    puts "あなた:チョキ"
  elsif jan == 3
    puts "あなた:パー"
  end
  
  partner_jan = rand(1..3)
  
  if partner_jan == 1
    puts "相手:グー"
  elsif partner_jan == 2
    puts "相手:チョキ"
  elsif partner_jan == 3
    puts "相手:パー"
  end
  
  puts "-----------------"

  pattern = ""
  
  if jan == 1
    pattern = "グーの場合"
  elsif jan == 2
    pattern = "チョキの場合"
  elsif jan == 3
    pattern = "パーの場合"
  end
  
  case pattern
    when "グーの場合"
      if partner_jan == 1
        puts "あいこです"
        start
      elsif partner_jan == 2
        puts "じゃんけんはあなたの勝ちです"
        jan_win_pattern
      elsif partner_jan == 3
        puts "じゃんけんはあなたの負けです"
        jan_lose_pattern
      end
    when "チョキの場合"
      if partner_jan == 1
        puts "じゃんけんはあなたの負けです"
        jan_lose_pattern
      elsif partner_jan == 2
        puts "あいこです"
        start
      elsif partner_jan == 3
        puts "じゃんけんはあなたの勝ちです"
        jan_win_pattern
      end
    when "パーの場合"
      if partner_jan == 1
        puts "じゃんけんはあなたの勝ちです"
        jan_win_pattern
      elsif partner_jan == 2
        puts "じゃんけんはあなたの負けです"
        jan_lose_pattern
      elsif partner_jan == 3
        puts "あいこです"
        start
      end 
  end
end

def jan_win_pattern
  puts "あっちむいて....."
  puts "上（１）　 右（２）　 下（３）　 左（４）"
  direction = gets.to_i
  puts "ほい！！"
  puts "-----------------"
  
  if direction == 1
    puts "あなた:上"
  elsif direction == 2
    puts "あなた:右"
  elsif direction == 3
    puts "あなた:下"
  elsif direction == 4
    puts "あなた:左"
  end
  
  partner_direction = rand(1..4)
  if partner_direction == 1
    puts "相手:上"
  elsif partner_direction == 2
    puts "相手:右"
  elsif partner_direction == 3
    puts "相手:下"
  elsif partner_direction == 4
    puts "相手:左"
  end
  
  puts "-----------------"
  
  if direction == partner_direction
    puts "あなたの勝ちです！！"
    puts "もう一度遊ぶ時は１を押してください！"
    newly = gets.to_i
    if newly == 1
      start
    end
  elsif direction != partner_direction
    start
  end
end

def jan_lose_pattern
 puts "あっちむいて....."
  puts "上（１）　右（２）　下（３）　左（４）"
  direction = gets.to_i
  puts "ほい！！"
  puts "-----------------"

  if direction == 1
    puts "あなた:上"
  elsif direction == 2
    puts "あなた:右"
  elsif direction == 3
    puts "あなた:下"
  elsif direction == 4
    puts "あなた:左"
  end
  
  partner_direction = rand(1..4)
  if partner_direction == 1
    puts "相手:上"
  elsif partner_direction == 2
    puts "相手:右"
  elsif partner_direction == 3
    puts "相手:下"
  elsif partner_direction == 4
    puts "相手:左"
  end
  
  puts "-----------------"
  
  if direction == partner_direction
    puts "あなたの負けです......"
    puts "もう一度遊ぶ時は１を押してください！"
    newly = gets.to_i
    if newly == 1
      start
    end
  elsif direction != partner_direction
    start
  end
end

start