def  da_boas_vindas
  puts "Qual é o seu nome?"
  nome = gets
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo pra você, " + nome
end


def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200.."
  sorteado  = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
  puts "\n\n\n\n"
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com o numero"
  chute = gets
  puts "Será que você acertou? Você chutou " + chute
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute

  if acertou
    puts "Acertou!"
    return true
  end

  maior = numero_secreto > chute.to_i
  if maior
    puts "O número secreto é maior!"
  else
    puts "O número secreto é menor!"
  end

  false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa, limite_de_tentativas
  break if verifica_se_acertou numero_secreto, chute
end
