module Sudoku

	class Puzzle
	ASCII = ".123456789"
	BIN = "\000\001\002\003\004\005\006\007\008\009"
	
	def initialize
	
	if(lines.respond_to? :join)
		s = lines.join
	else
		s = lines.dup
		
		s.gsub!(/s/, "")
		
		raise Invalid, "Grid is Wrong size" unless s.size == 81
		