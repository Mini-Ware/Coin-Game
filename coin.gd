extends Area2D

signal hit

var min_x = 0
var max_x = 500
var min_y = 0
var max_y = 300
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#print(position)
	pass

func _on_body_entered(_body: Node) -> void:
	print("hit")
	hit.emit()
	## Declare a variable within the function (accessible only within this function)
	var random_x = randf() * (max_x - min_x) + min_x
	var random_y = randf() * (max_y - min_y) + min_y
	## Create a Vector2 and move the object
	var random_position = Vector2(random_x, random_y)
	position = random_position
	score+=1
	get_node("../HUD/ScoreLabel").text = "SCORE - "+str(score)
