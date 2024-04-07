extends Area2D


const SPEED = 300.0
var direction = Vector2.ZERO

func _ready():
	direction.y = [1, -1].pick_random()
	direction.x = [1, -1].pick_random()

func _physics_process(delta):
	if direction:
		global_position -= direction * SPEED * delta

func _on_body_entered(body):
	direction.x *= -1
	Main.side = body.side
