extends Node2D

#1. Load the Scene
var meteor_scene: PackedScene = load("res://Scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")

func _ready() -> void:
	#stars
	var size = get_viewport().get_visible_rect().size
	var rng = RandomNumberGenerator.new()
	for star in $Stars.get_children():
		#position
		var randomX = rng.randi_range(0, size.x)
		var randomY = rng.randi_range(0, size.y)
		star.position = Vector2(randomX,randomY)
		#scale
		var randomScale = rng.randf_range(0.35,0.65)
		star.scale = Vector2(randomScale, randomScale)
		#speed
		var randomSpeed = rng.randf_range(0.8,1.2)
		star.speed_scale = randomSpeed

func _on_meteor_timer_timeout() -> void:
	#2. create an instance
	var meteor = meteor_scene.instantiate()
	
	#3. attach the node to the scene tree
	$Meteors.add_child(meteor)

func _on_player_fire_laser(pos) -> void:
	#print('shoot laser: ' + str(pos))
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
