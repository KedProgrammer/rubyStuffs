class CellFinder
	def initialize
		@alphabetic = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
		@controller = 0
		@indices = [0]
	end
	def finder(number)
		number.times do |n|
			if @controller == 0
				indice_pusher
			end
			@indices[@indices.length - 1] = @controller	
			@controller == @alphabetic.length-1 ? @controller = 0 : @controller+=1	
		end	
		result =@indices.collect {|indice| @alphabetic[indice]}
		
		puts(result.join)
	end

	def indice_pusher
		all_controller = 0
		@indices.each do |a|
			if a == @alphabetic.length-1
				all_controller+=1
			end
		end
		if all_controller == @indices.length
			@indices.fill(0).push(0)
		else
			@indices[@indices.length - 2 ]+=1
			@indices.reverse.each do |e|
				if e == @alphabetic.length 
					indice = @indices.index(e)
					@indices[indice] = 0
					@indices[indice - 1]+=1
				end
			end
		end
	end
	
end





prueba = CellFinder.new
prueba.finder(18304)
