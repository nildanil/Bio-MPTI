require 'bio' #подключаем библиотеку bio, чтобы биоруби заработал
count_of_dismatches = 0 #счетчик мутаций
num_of_nucleotides_in_aln_file = 683269 #константа, количество нуклеотидов в файле(номер последнего)
list_of_numbers_of_dismatches = Array.new #создаем список всех индексов мутаций(пока что пустой)
aln = Bio::ClustalW::Report.new(File.read('alignments/compile1.aln')) #читаем файл aln с помощью инструмента ClustalW
match_array = aln.match_line[1..num_of_nucleotides_in_aln_file].split("") #записываем строку

match_array.each_with_index do |symbol,index |   #цикл, который все считает
    if symbol == " "
      count_of_dismatches += 1
      list_of_numbers_of_dismatches << index
      end
end #тут цикл кончился

if count_of_dismatches == 0 #если счетчик мутаций не сдвинулся с места, то выводим сообщение
  puts "Последовательности гомологичны"
  puts "Несовпадения не найдены"
else #иначе выводим номера мутаций и их количество
  puts list_of_numbers_of_dismatches.join("|")
  puts "Количество несовпадений: #{count_of_dismatches}"
end
