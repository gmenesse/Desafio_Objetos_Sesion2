# w = lo abre borra y reescribe
# a = agrega
# r = rescribe

class Roulette
  def play(bet)
    @r = rand(1..10)
    @bet = bet
    (@bet == @r)? winner : historial
  end

  def winner
    puts "Felicidades! has ganado, tu numero sera agregado al historial"
    file_W = File.open('winners.txt', 'a')
      file_W.puts "#@bet"
      historial
      file_W.close
  end

  def historial
    puts "Se agregara el numero #{@r} de la ruleta"
    file_H = File.open('roulette_history.txt', 'a')
      file_H.puts "#@r"
      file_H.close
  end
end

p1 = Roulette.new

100.times do
p1.play(5)
end
