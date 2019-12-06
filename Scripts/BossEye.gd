extends RigidBody2D


var BLAST = preload("res://Scenes/EnemyBlast.tscn")

var lives = 5

func _ready():
	$AnimatedSprite.play("Boss")

func hit():
	lives -= 1
	if lives <= 0:
		#you win
		#explosion?
		queue_free()

func _on_Timer_timeout():
	if rand_range(0,1) > 0.8:
		var blast = BLAST.instance()
		blast.set_plasmablast_direction(-1)
		get_parent().add_child(blast)
		blast.position = $Position2D.global_position
