extends Node

export (PackedScene) var Zombie

func _on_ZombieTimer_timeout():
	randomize()
	var zombie = Zombie.instance()
	var topOrBottom = round(rand_range(0, 1))
	print(topOrBottom)
	if(topOrBottom == 0):
		var zombieX = rand_range($ZombiePositionTL.position.x, $ZombiePositionTR.position.x)
		var zombieY = $ZombiePositionTL.position.y
		add_child(zombie)
		zombie.position = Vector2(zombieX, zombieY)
	else:
		var zombieX = rand_range($ZombiePositionBL.position.x, $ZombiePositionBR.position.x)
		var zombieY = $ZombiePositionBL.position.y
		add_child(zombie)
		zombie.position = Vector2(zombieX, zombieY)

	var zombie_timer = rand_range(1, 3)
	$ZombieTimer.start(zombie_timer)
