extends Node2D

#1. Load the Scene
var meteor_scene: PackedScene = load("res://Scenes/meteor.tscn")

func _on_meteor_timer_timeout() -> void:
	#2. create an instance
	var meteor = meteor_scene.instantiate()
	
	#3. attach the node to the scene tree
	$Meteors.add_child(meteor)
