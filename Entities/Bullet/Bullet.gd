extends Area2D

var speed = 1200

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
