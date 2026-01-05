extends Area2D

@export var speed = 600

func _ready() -> void:
	#$LaserSprite.scale = Vector2(0,0)
	var tween = create_tween()
	tween.tween_property($LaserSprite, 'scale', Vector2(1,1), 0.1).from(Vector2(0,0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y -= speed * delta
