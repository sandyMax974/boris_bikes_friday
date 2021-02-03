class DockingStation
	attr_reader :bike_list

	def initialize
		@bike_list = []
	end

	def release_bike
    if @bike_list.length == 0
      raise "No bikes avaliable"
    else
		  Bike.new
    end
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
