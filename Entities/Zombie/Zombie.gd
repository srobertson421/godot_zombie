extends Area2D

var health = 5
var speed = 50
var velocity = Vector2()

func _process(delta):
	var playerPos = get_parent().get_node("Player").position
	velocity = position.direction_to(playerPos) * speed
	look_at(playerPos)
	position += velocity * delta

func _on_Zombie_area_entered(area):
	if area.is_in_group("bullet"):
		area.queue_free()
		health -= 1
		$BloodSplatter.show()
		$BloodSplatter.frame = 0
		$BloodSplatter.play()
		if(health == 0):
			queue_free()

func _on_BloodSplatter_animation_finished():
	$BloodSplatter.stop()
	$BloodSplatter.hide()
