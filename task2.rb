janken_hands = ["グー", "チョキ", "パー"]
finger_direction = ["上", "下", "左", "右"]

# 3を押した場合、ループ抜けてプログラムを終了
while true do
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player_hand = gets.to_i
  computer_hand = rand(3)

  unless player_hand == 3
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{janken_hands[player_hand]}を出しました"
    puts "相手：#{janken_hands[computer_hand]}を出しました"
    puts "---------------"
    
        # 勝敗が出るまでジャンケンを続ける（ループ）
    while player_hand == computer_hand do
      puts "あいこで"
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"

      player_hand = gets.to_i
      computer_hand = rand(3)

      puts "ショ！"
      puts "---------------"
      puts "あなた：#{janken_hands[player_hand]}を出しました"
      puts "相手：#{janken_hands[computer_hand]}を出しました"
      puts "---------------"
    end
    
    
    if (player_hand == 0 && computer_hand == 1) || (player_hand == 1 && computer_hand == 2) || (player_hand == 2 && computer_hand == 0)
   #自分が勝てば
    player_win_flag = true
  else
    #自分が負ければ
    player_win_flag = false
  end
  
  #あいこ以外ならあっち向いてホイ！
  puts "あっちむいて〜"
  puts "0(上)１(下)２(左)３(右)"
  player_direction = gets.to_i
  computer_direction = rand(4)
  puts "ホイ！"
  puts "-------------"
  puts "あなたは#{finger_direction[player_direction]}"
  puts "相手は#{finger_direction[computer_direction]}"
  
  if player_win_flag && player_direction == computer_direction
    puts "あなたの勝ちです！"
  elsif !player_win_flag && player_direction == computer_direction
    puts "あなたの負けです！"
  end
  
  else
    break
  end
end

