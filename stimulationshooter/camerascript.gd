extends MeshInstance3D
@onready var playerCamera:Camera3D = $"../../../Camera3D"

# Called when the node enters the scene tree for the first time.


var pitch:float = 0.0

func _input(event: InputEvent) -> void:

	
	
	
	if event is InputEventMouseMotion:
		var delta = event.relative
		
	

		

		
			
		

		self.get_parent().get_parent().rotate(Vector3.DOWN,delta.x * 0.001 * 3 )
		
		
		pitch-= delta.y * 0.003
		
		pitch = clamp(pitch,deg_to_rad(-89),deg_to_rad(89))
		print(pitch)
		
	
	
					#vector3(-1,0,0)
		self.rotation.x = pitch

		playerCamera.rotation.y =  self.get_parent().get_parent().rotation.y
		playerCamera.rotation.x = self.rotation.x
	
		


	
		
		
