def number_word_count
  number_hash = {
                '1'=>'one',
                '2'=>'two',
                '3'=>'three',
                '4'=>'four',
                '5'=>'five',
                '6'=>'six',
                '7'=>'seven',
                '8'=>'eight',
                '9'=>'nine',
                '10'=>'ten',
                '11'=>'eleven',
                '12'=>'twelve',
                '13'=>'thirteen',
                '14'=>'fourteen',
                '15'=>'fifteen',
                '16'=>'sixteen',
                '17'=>'seventeen',
                '18'=>'eighteen',
                '19'=>'nineteen',
                '20'=>'twenty',
                '30'=>'thirty',
                '40'=>'forty',
                '50'=>'fifty',
                '60'=>'sixty',
                '70'=>'seventy',
                '80'=>'eighty',
                '90'=>'ninety',
                '100'=>'hundred',
                '1000'=>'thousand',
                }

  count = 0

  (1..1000).each do |num|
    number_in_words = ""
    # 1000's place
    write = num/1000
    left  = num - (write*1000)
    number_in_words += number_hash[write.to_s] + number_hash[1000.to_s] if write> 0
    # 100's place
    write = left/100
    left  = left - (write*100)
    if(write > 0 && left == 0)
    number_in_words += number_hash[write.to_s] + number_hash[100.to_s]
    elsif(write > 0 && left != 0)
    number_in_words += number_hash[write.to_s] + number_hash[100.to_s]+"and"
    end
    # 10's place
    write = left/10
    if write == 1
    write = left
    left = 0
    number_in_words += number_hash[write.to_s]
    elsif write > 1
    left  = left - (write*10)
    number_in_words += number_hash[write.to_s+"0"]
    end
    # one's place
    number_in_words += number_hash[left.to_s] if left > 0
    count += number_in_words.length
  end
  count
end
print number_word_count
