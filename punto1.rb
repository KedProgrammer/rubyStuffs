class Validator

	def order(array)
		result = []
		items = []
		aux = 0
		count = 0
		array.sort.each do |a|
			unless items.include?(a)
				aux = a
				items << a
				array.each do |b|
					aux == b ? count = count + 1 : count = count
				end
				result << [a,count]
				count = 0
			end
		end
		puts(result)

	end
end


prueba = Validator.new
prueba.order([1,2,4,5,6,8,2,8,3,2])