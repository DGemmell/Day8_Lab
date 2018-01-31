class Pub

 attr_reader :name, :till

 def initialize(name)
   @name = name
   @till = 0
   @drinks = []
 end
end
