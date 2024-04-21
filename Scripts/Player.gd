extends RigidBody3D

@export var thrustSpeed: int = 2
@export var turnSpeed: int = 1
var forceMult: float = 1000.0
var torqueMult: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# thrust logic
	if Input.is_action_pressed("boost"):
		apply_central_force(basis.y * thrustSpeed * forceMult * delta)
		
	# turn left logic
	if Input.is_action_pressed("rotate_left"):
		apply_torque(Vector3(0.0, 0.0, turnSpeed * torqueMult * delta))
		
	#turn right logic
	if Input.is_action_pressed("rotate_right"):
		apply_torque(Vector3(0.0, 0.0, -turnSpeed * torqueMult * delta))



func _on_body_entered(body: Node) -> void:
	
	#checking for goal collision
	if "goal" in body.get_groups():
		print("You wind!")
		
	# checking for hazard collision
	if "hazard" in body.get_groups():
		print("You lose :(")
		
