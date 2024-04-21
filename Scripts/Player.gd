extends RigidBody3D

var thrustSpeed: int = 2
var turnSpeed: int = 1
var forceMult: float = 1000.0
var torqueMult: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# thrust logic
	if Input.is_action_pressed("ui_accept"):
		apply_central_force(basis.y * thrustSpeed * forceMult * delta)
		
	# turn left logic
	if Input.is_action_pressed("ui_left"):
		apply_torque(Vector3(0.0, 0.0, turnSpeed * torqueMult * delta))
		
	#turn right logic
	if Input.is_action_pressed("ui_right"):
		apply_torque(Vector3(0.0, 0.0, -turnSpeed * torqueMult * delta))

