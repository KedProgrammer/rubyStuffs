class Hash
	def initialize
 		@hash = {}
 		@auxiliar_array = []
	end

	def converter
		indice = 0
		control = true
		array = []
		while control
			prueba = File.open("..\\Prueba ruby 1\\configurations.txt"){|file| file.readlines[indice]}
			if prueba.nil?
				control = false
			else
				@auxiliar_array = prueba.split(" = ")
				unless @auxiliar_array[1].nil? 
					@hash[@auxiliar_array[0]] = @auxiliar_array[1].split(" # ")[0].split("\n")[0]
				end
			end
			indice += 1
		end
		puts (@hash)
	end

	def prueba_string
		string = "hola mundo # esta es una prueba"
		puts (string.split(" # ")[0])
	end
end

prueba = Hash.new
prueba.converter

