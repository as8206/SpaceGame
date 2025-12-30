extends Area2D

func _ready():
	#create the random number generator
	var rng := RandomNumberGenerator.new()
	
	#start position
	var width = get_viewport().get_visible_rect().size[0]
	var height = get_viewport().get_visible_rect().size[1]
	var randomX = rng.randi_range(0, width)
	var randomY = rng.randi_range(-150,-50)
	position = Vector2(randomX, randomY)
	
func _process(delta: float) -> void:
	position += Vector2(0, 1.0) * 400 * delta

func _on_body_entered(body: Node2D) -> void:
	print('body entered')
	print(body, ' has entered the area')
