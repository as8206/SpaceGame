extends CharacterBody2D

@export var speed: int = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	#position += direction * speed * delta
	#print(Input.is_physical_key_pressed(KEY_W), " and ", Input.is_key_pressed(KEY_W))
	#if Input.is_physical_key_pressed(KEY_W):
		#position += Vector2(0,-1) * 100 * delta
	#if Input.is_physical_key_pressed(KEY_S):
		#position += Vector2(0,1) * 100 * delta
	#if Input.is_physical_key_pressed(KEY_A):
		#position += Vector2(-1,0) * 100 * delta
	#if Input.is_physical_key_pressed(KEY_D):
		#position += Vector2(1,0) * 100 * delta
	#position += Vector2(1,1) * 25 * delta
	#$PlayerShipSprite.position += Vector2(1,1) * 25 * delta
	
