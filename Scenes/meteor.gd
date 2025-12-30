extends Area2D

var speed : int = 300
var rotationSpeed : float
var directionX : float

func _ready():
	#create the random number generator
	var rng := RandomNumberGenerator.new()
	
	#start position
	var width = get_viewport().get_visible_rect().size[0]
	#var height = get_viewport().get_visible_rect().size[1]
	var randomX = rng.randi_range(0, width)
	var randomY = rng.randi_range(-150,-50)
	position = Vector2(randomX, randomY)
	
	#choose and set random sprite (my solution)
	var newTexture : Resource
	#var randomSprite = rng.randi_range(0,3)
	#match randomSprite:
		#0:
			#newTexture = preload("res://Assets/Sprites/Meteors/spaceMeteors_001.png")
		#1:
			#newTexture = preload("res://Assets/Sprites/Meteors/spaceMeteors_002.png")
		#2:
			#newTexture = preload("res://Assets/Sprites/Meteors/spaceMeteors_003.png")
		#3:
			#newTexture = preload("res://Assets/Sprites/Meteors/spaceMeteors_004.png")
	
	#alternate way to do texture
	var texturePath: String = "res://Assets/Sprites/Meteors/spaceMeteors_00" + str(rng.randi_range(1,4)) + ".png"
	newTexture = load(texturePath)
	
	#set the texture (for Both)
	$Sprite2D.texture = newTexture
	
	#generate speed, rotation speed, and direction values
	speed = rng.randi_range(250,450)
	rotationSpeed = rng.randf_range(-5,5)
	directionX = rng.randf_range(-0.25, 0.25)

func _process(delta: float) -> void:
	position += Vector2(directionX, 1.0) * speed * delta
	rotation += rotationSpeed * delta #or use rotation_degrees for degrees instead of radians

func _on_body_entered(body: Node2D) -> void:
	print('body entered')
	print(body, ' has entered the area')
