extends Node3D

var thrustSpeed: int 2
var turnSpeed: int 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# thrust logic
	if Input.is_action_pressed("ui_accept"):
		position.y += thrustSpeed * delta
		
	# turn left logic
	if Input.is_action_pressed("ui_left"):
		rotate_z(turnSpeed * delta)
		
	#turn right logic
	if Input.is_action_pressed("ui_right"):
		rotate_z(-turnSpeed * delta)

