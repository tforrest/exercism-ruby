class Hamming
	def self.compute (dna_one, dna_two)
		if dna_one.length != dna_two.length
			raise ArgumentError
		end 
		hamming_distance = 0
		for i in 0...dna_one.length do
			if dna_one[i] != dna_two[i]
				hamming_distance += 1
			end
		end
		hamming_distance
	end
end