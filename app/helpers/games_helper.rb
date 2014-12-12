module GamesHelper
  

def value(name1, name2)

	smallname1 = name1.split(' ').join('')
	smallname2 = name2.split(' ').join('')
	p = smallname1.length
	q = smallname2.length

	n = 0

	for i in 0...p do 

		for j in 0...q do

			if smallname1[i]==smallname2[j]

				n = n + 1

				break
				
			end

			j = j + 1

		end

		i = i + 1

	end

	return flame(p + q - 2*n)

end


def flame(count)

	s = "flames"

	j = count

	while s.length > 1 do

		while j > s.length do

			j = j - s.length
			
		end

		 s.slice!(j-1).chr
		j = j - 1 + count
		puts j
	end

	if s.length == 1
		return out(s[0])		
	end
	
end

def out(n)

	case n
		when 'f'
			return 'FRIEND'

		when 'l'
			return 'LOVE'

		when 'a'
			return 'AFFAIR'

		when 'm'
			return 'MARRIAGE'

		when 'e'
			return 'ENEMIES'

		when 's'
			return 'SIBILING'

		end

end

puts value('ravikanth','andhavarapu')
end
