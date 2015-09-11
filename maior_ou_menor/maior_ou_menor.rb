def  da_boas_vindas
  puts "Qual é o seu nome?"
  nome = gets
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo pra você, " + nome
end


def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200.."
  numero_secreto = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  return numero_secreto
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto

puts "\n\n\n\n"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com o numero"
  chute = gets
  puts "Será que você acertou? Você chutou " + chute

  acertou = numero_secreto == chute.to_i

  if acertou
    puts "Acertou!"
    break
  else
    maior = numero_secreto > chute.to_i

    if maior
      puts "O número secreto é maior!"
    else
      puts "O número secreto é menor!"
    end
  end
end
