extends CharacterBody3D
@onready var Beanplayer:MeshInstance3D = $Beanplayer
@onready var Camera:Camera3D = $"../Camera3D"
var speed:int = 300
const  Gravity:int = -20

func _physics_process(delta: float) -> void:
	
	self.velocity.y += Gravity * delta
	var direction = Vector3.ZERO

	self.velocity.x = 0
	self.velocity.z = 0
	if Input.is_action_pressed("forward"):
		direction -= transform.basis.z
		print(direction)
	if Input.is_action_pressed("back"):
		
		direction += transform.basis.z
	if Input.is_action_pressed("left"):
	
		direction -= transform.basis.x
	if Input.is_action_pressed("right"): 
		direction += transform.basis.x
	if Input.is_action_just_pressed("jump") and self.is_on_floor():
		velocity.y = 300 * delta
		
	self.velocity.x = direction.x * speed  * delta
	self.velocity.z = direction.z * speed  * delta
	
	
	
	move_and_slide()


				
	

	Camera.position = self.position
