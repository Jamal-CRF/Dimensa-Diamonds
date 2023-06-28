require 'colorize'

class DiamondMiner
  def initialize(expression)
    @expression = expression.gsub('.', '')
  end

  def mine
    count = 0
    while @expression.include?('<>')
      @expression.sub!('<>', '')
      count += 1
      sleep(0.5) 
      puts "| 🔍 Procurando diamantes...".ljust(50).concat(" |").yellow
    end
    count
  end

  def display
    puts "+".yellow + "-"*48 + "+".yellow
    puts "|".yellow + "                 DiamondMiner                 ".yellow + "|".yellow
    puts "+".yellow + "-"*48 + "+".yellow
    diamond_count = mine
    puts "| 🎉 Número de ocorrências de Diamantes <>: #{diamond_count} 🎉".ljust(50).concat(" |").green
    puts "+".yellow + "-"*48 + "+".yellow
    puts "|".yellow + "                        FIM                     ".yellow + "|".yellow
    puts "+".yellow + "-"*48 + "+".yellow
  end
end

miner = DiamondMiner.new('<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>')
miner.display
