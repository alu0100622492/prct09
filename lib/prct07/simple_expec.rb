require 'pry'

module Prct07 
	class SimpleExpec < Preg
		attr_accessor :right, :distractor
	 def initialize(args)
		super(args[:text])
		@right = args[:right]
		raise ArgumentError, 'Specify :right' unless @right
		@distractor = args[:distractor]
		raise ArgumentError, 'Specify :distractor' unless @distractor
	 end
	 def to_html
		options = @distractor+[@right]
		options = options.sample       # Metodo que baraja un array
		options = ''
		options.each do |options|
		options +=  %Q{<input type = "radio" value= "#{options}" name = 0 > #{options}\n}
		html = %Q{
		{#{@text}}<br/>
		{#{options}}
		}
		end
	 end
	 def to_s
	     "#{@text}#{@right}#{@distractor}"
	 end
	 
	 def <= (other)
	 	distractor.size <= other.distractor.size
	 end
	
	 def >= (other)
	 	distractor.size >= other.distractor.size
	 end
	end
end
