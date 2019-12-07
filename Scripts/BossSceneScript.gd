extends Node2D

onready var life = $"bosslives/Lives"
onready var Heartss = [$"bosslives/Lives/Sprite", "bosslives/Lives/Sprite2", "bosslives/Lives/Sprite3", "bosslives/Lives/Sprite4", "bosslives/Lives/Sprite5"]

var Boss_heart_full = load("res://Assets/bob.png.png")
var Boss_heart_half = load("res://Assets/bob2.png.png")
var Boss_heart_empty = load("res://Assets/bob3.png.png")

onready var Lives = $"CanvasLayer/lives + etc/Lives"
onready var Hearts = [$"CanvasLayer/lives + etc/Lives/Sprite3", $"CanvasLayer/lives + etc/Lives/Sprite2", $"CanvasLayer/lives + etc/Lives/Sprite"]

var heart_full = load("res://Assets/New Piskel-1.png (2).png")
var heart_half = load("res://Assets/Half Heart-1.png (1).png")
var heart_empty = load("res://Assets/Half Heart-1.png.png")

var livess = 10
var lives = 6


func _unhandled_input(event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()
		

func update_bosslives(delta):
	livess += delta
	for a in range(len(Heartss)):
		Heartss[a].texture = Boss_heart_full
		if livess < (a+1)*2:
			Heartss[a].texture = Boss_heart_empty
		if livess == (a*2)+1:
			Heartss[a].texture = Boss_heart_half
	if livess == 0:
		get_tree().change_scene("res://Scenes/WinScreen.tscn")

func update_lives(delta):
	lives += delta
	for h in range(len(Hearts)):
		Hearts[h].texture = heart_full
		if lives < (h+1)*2:
			Hearts[h].texture = heart_empty
		if lives == (h*2)+1:
			Hearts[h].texture = heart_half
	if lives == 0:
		get_tree().change_scene("res://Scenes/YouLose.tscn")
		

		

			
