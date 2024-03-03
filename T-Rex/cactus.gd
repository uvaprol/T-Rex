extends Area2D

const textures = ["res://texture/c1.png", "res://texture/c2.png", "res://texture/c3.png", "res://texture/c4.png", "res://texture/c5.png", "res://texture/c6.png"]
# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.texture = load(textures[randi_range(0, 5)])
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 5


func _on_body_entered(body):
	get_tree().paused = true
