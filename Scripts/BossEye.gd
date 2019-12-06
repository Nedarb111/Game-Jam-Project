extends RigidBody2D


var BLAST = preload("res://Scenes/EnemyBlast.tscn")


func _ready():
	$AnimatedSprite.play("Boss")


func _on_Timer_timeout():
	if rand_range(0,8) > 0.1:
		var blast = BLAST.instance()
		blast.set_plasmablast_direction(-1)
		get_parent().add_child(blast)
		blast.position = $Position2D.global_position



	




	