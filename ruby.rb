def janken 
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]

    puts "あなたの手:#{jankens[player_hand]}, 相手:#{jankens[program_hand]}"

if player_hand == program_hand
      puts "あいこで"
      janken
      return true 
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "I will finish you."
      puts "あっち向いて...(指）\n[0]:上\n[1]:右\n[2]:下\n[3]:左"
      player_finger = gets.to_i
      program_face = rand(4)
      hoi = ["上", "右", "下", "左"]
      puts "ホイ！あなた:#{hoi[player_finger]}, 相手:#{hoi[program_face]}"
    if (hoi[player_finger]) == (hoi[program_face])
      puts "あなたの勝ち"
     else 
      puts "I will end this.\n最初はグー、じゃんけん..."
      janken 
     end
     false
     
elsif (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 0 && program_hand == 2)
      puts "you are cracking my balls."
      puts "あっち向いて...（顔）\n[0]:上\n[1]:右\n[2]:下\n[3]:左"
      player_face = gets.to_i
      program_finger = rand(4)
      hoi = ["上", "右", "下", "左"]
      puts "ホイ！あなた:#{hoi[player_face]}, 相手:#{hoi[program_finger]}"
      if (hoi[player_face]) == (hoi[program_finger])
      puts "あなたの負け"
      else
      puts "i will end this.\n最初はグー、じゃんけん..."
      janken 
      end
     end
     false
end


next_game = true 
puts "最初はグー、じゃんけん..."
while next_game do 
    next_game = janken 
end
