extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$".".animation = "run"
	$".".play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_tree().paused == true:
		$".".visible = false
