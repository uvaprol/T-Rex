extends Node2D

var count = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = false
	$Button.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_tree().paused == true:
		$Button.visible = true


func _on_timer_timeout():
	var cactus = preload("res://cactus.tscn").instantiate()
	cactus.position = Vector2(1159, 574)
	add_child(cactus)
	$Timer.wait_time = randf_range(0.75, 2)


func _on_score_timer_timeout():
	$Label.text = ('Score: {0}'.format([count], "{_}"))
	count += 1


func _on_button_pressed():
	get_tree().reload_current_scene()
