f = open("Day1b.source.txt", "r")

total_fuel=0
for x in f:
	fuel_for_x=int(x)
	while round(fuel_for_x/3-0.5)-2>0:
		fuel_for_x=round(fuel_for_x/3-0.5)-2
		total_fuel=fuel_for_x+total_fuel;

print total_fuel;
