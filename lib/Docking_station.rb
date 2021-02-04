class DockingStation
	attr_reader :bike_list

	def initialize
		@bike_list = []
	end

	def release_bike
    if @bike_list.length == 0
      raise "No bikes avaliable"
    else
		  @bike_list.pop
    end
	end

	def dock(bike)
    if @bike_list.length >= 20
      raise "Station full"
    else
			@bike_list << bike 
			return "Bike Docked!" 
    end
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
