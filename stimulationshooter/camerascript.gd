extends MeshInstance3D
@onready var playerCamera:Camera3D = $"../../../Camera3D"

# Called when the node enters the scene tree for the first time.




func _input(event: InputEvent) -> void:
	
	
	
	if event is InputEventMouseMotion:
		var delta = event.relative
	


		
		self.get_parent().get_parent().rotate(Vector3.DOWN,delta.x * 0.001 * 3 )
		self.rotate(Vector3.LEFT ,delta.y * 0.001 * 3)

		playerCamera.rotation.y =  self.get_parent().get_parent().rotation.y
		playerCamera.rotation.x = self.rotation.x
	
		


	
		
		
