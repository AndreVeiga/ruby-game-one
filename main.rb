def da_boas_vindas
  puts "Bem vindo ao Jogo de Adivinhação"
  puts "Qual é o seu nome?"
  nome = gets.chomp() # gets.strip
  puts "Olá #{nome}, tudo bem? Vamos Começar! \n"
end

def sorteia_numero_secreto
  175
end

def pede_um_numero tentativa, tentativa_maxima, chutes
  puts "Tentativa #{tentativa} de #{tentativa_maxima}"
  puts "Tentativas até agora: #{chutes}"
  puts "Digite o valor: " 
  chute = gets.chomp().to_i
end

def verifica_se_acertou chute, numero_secreto, tentativa
  if chute == numero_secreto
    puts "Parabéns, você acertou com #{tentativa} tentativa(s)!"
    return true
  end

  puts "Você errou, tente novamente."
  false
end

da_boas_vindas

numero_secreto = sorteia_numero_secreto

tentativa_minina = 1
tentativa_maxima = 5
chutes = []

for tentativa in tentativa_minina..tentativa_maxima
  chute = pede_um_numero tentativa, tentativa_maxima, chutes
  chutes << chute
  break if verifica_se_acertou chute, numero_secreto, tentativa
end
