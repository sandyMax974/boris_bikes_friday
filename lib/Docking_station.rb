class DockingStation
	attr_reader :bike_list 
	
	def initialize
		@bike_list = ["bike", "another bike"]
	end

	def release_bike
		Bike.new
	end

	def dock(bike)
		return "Bike Docked!" if bike.is_a? Bike
	end

	def check_bike 
		if @bike_list.length > 0
			return true
		else return false
		end 
	end

end

class Bike

  def working?
    true
  end

end
