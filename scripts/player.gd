extends RigidBody2D

var Movimiento = Vector2(0.0, 0.0)
var Velocidad = 3
var Turbo = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	print("I'm ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _physics_process(delta):
	Movimiento.x = 0
	Movimiento.y = 0
	if Input.is_action_pressed("move_left"):
		Movimiento.x -= 1 * Velocidad
		
	if Input.is_action_pressed("move_right"):
		Movimiento.x += 1 * Velocidad
	
	if Input.is_action_pressed("move_up"):
		Movimiento.y -= 1 * Velocidad
		
	if Input.is_action_pressed("move_down"):
		Movimiento.y += 1 * Velocidad
		
	if Input.is_key_pressed(KEY_SPACE):
		if Turbo > 0:
			Movimiento *= 5
			Turbo -= 1
		
	position += Movimiento
	
	# Proyecto
	
