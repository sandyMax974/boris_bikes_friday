require_relative 'Bike'

class DockingStation
	attr_reader :bike_list

	def initialize
		@bike_list = []
	end

	def release_bike
    raise "No bikes avaliable" if dock_empty?
	  bike_list.pop
	end

	def dock(bike)
    raise "Station full" if dock_full?
		bike_list << bike
	end

	def check_bike
		bike_list.length > 0
	end

  private
	def dock_empty?
		bike_list.length == 0
	end
	def dock_full?
		bike_list.length >= 20
	end

end
