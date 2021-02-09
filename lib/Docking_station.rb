require_relative 'bike'
require_relative 'vans'

class DockingStation
	DEFAULT_CAPACITY = 20

	attr_reader :bikes, :capacity

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = []
	end

	def release_bike
    raise "No bikes avalaible" if dock_empty?
		fail "Bike is broken" if @bikes[-1].broken == true
	  bikes.pop
	end

	def dock(bike)
    raise "Station full" if dock_full?
		bikes << bike
	end

	def dock_broken(bike)
		bike.report_broken
		bikes << bike
	end

	def check_bike
		!bikes.empty?
	end

  private
	def dock_empty?
		bikes.empty?
	end
	def dock_full?
		bikes.length >= @capacity
	end

end
