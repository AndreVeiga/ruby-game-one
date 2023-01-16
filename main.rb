puts "Bem vindo ao Jogo de Adivinhação"

puts "Qual é o seu nome?"
nome = gets.chomp()

puts "Olá #{nome}, tudo bem? Vamos Começar! \n"

numero_secreto = 175

for tentativa in 1..3
  puts "Digite o valor da tentativa " + tentativa.to_s
  tentativa = gets.chomp().to_i


  if tentativa == numero_secreto then
    puts "Você acertou, parabéns!"
  else 
    puts "Você errou, tente novamente."
  end
end
