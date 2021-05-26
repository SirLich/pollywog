extends Node2D

export var move_speed = 0
export var rotate_speed = 0

func _ready():
	pass
	
func _process(delta):
	var rotate_direction = 1
	
	var left_vec = global_transform.y.normalized()
	var direction_to = global_position.direction_to(get_global_mouse_position())

	if 	left_vec.dot(direction_to) < 0:
		rotate_direction = -1

	self.rotation += rotate_speed * rotate_direction * delta

	self.position += Vector2(1, 0).rotated(rotation) * move_speed * delta
