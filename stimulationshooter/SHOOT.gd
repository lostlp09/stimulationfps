extends Node3D

@onready var bullet = $"../../Bullet"

@onready  var player = $"../../CharacterBody3D"
var clone
var direction = Vector3.ZERO

var dictionary:Array = []
var cooldown = 0.2


@onready var  kamera:Camera3D = $".."
	

func _process(delta: float) -> void:
	
	
	cooldown += delta
	
	
	if Input.is_action_pressed("SHOOT") and cooldown >= 0.1:
		cooldown = 0
		clone = bullet.duplicate()
		var forward_offset = -kamera.transform.basis.z * 0.5
		var left_offset = -kamera.transform.basis.x * 0.015
		 # z.B. leicht über Füße
		clone.position = player.position  + left_offset + forward_offset
		direction =  -kamera.transform.basis.z
		

	
		dictionary.append({"bullet":clone,"diction":direction,})
		

		
		bullet.get_parent().add_child(clone)
	
	
	
	
	
	if clone != null:
		for i in dictionary:
			var bullet = i["bullet"]
			var direction = i["diction"]
			bullet.global_transform.origin += direction  * 6 * delta
			





		
		
