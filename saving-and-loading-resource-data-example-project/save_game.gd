extends Node2D

var num_resource = preload("res://number.tres")
var SAVE_GAME_PATH = "user://save.tres"

func _ready() -> void:
	if save_exists():
		# load existing save
		Playerdata.number_resource = load_save()
		print("Returning existing data to load.")
	else:
		ResourceSaver.save(num_resource, SAVE_GAME_PATH)
		Playerdata.number_resource = load_save()
		print("Data instantiated.")
		
func save_game():
	ResourceSaver.save(Playerdata.number_resource, SAVE_GAME_PATH)
	print("Data Stored.")

func save_exists() -> bool: # returns boolean value
	return ResourceLoader.exists(SAVE_GAME_PATH)
	
func load_save() -> Resource:
	return ResourceLoader.load(SAVE_GAME_PATH)
