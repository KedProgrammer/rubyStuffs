class Factor
	def initialize
 		 @hash = {}
 		 @auxiliar_array = []
		
	end

	def factorize(array)
		array.each do |e|
			array.each do |t|
				if t != e
					if e%t == 0
						@auxiliar_array << t
					end
				end
			end
			@hash[e] = @auxiliar_array
			@auxiliar_array = []
		end
		puts(@hash)
	end
end


prueba = Factor.new
prueba.factorize([10,5,2,20])