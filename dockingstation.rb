class DockingStation
	def release_bike
		Bike.new
	end
end



class Bike
	def working
		[true,false].sample
	end
end

