extends CharacterBody2D

var health = 5
@onready var health_bar = $ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func hit(hit_dir):
	self.velocity = hit_dir.normalized() * 100000
	health -= 1
	health_bar.value = health
	if health <= 0:
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity *= 0.9 * delta
	move_and_slide()
