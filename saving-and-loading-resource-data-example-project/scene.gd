extends Node2D

@onready var num_resource = Playerdata.number_resource

func add_number():
	num_resource.number += 1
	print(num_resource.number)
	
func save_game():
	SaveGame.save_game()
