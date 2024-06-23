extends CanvasLayer


@onready var plus_1 = $Control/Window/MarginContainer/VBoxContainer/HBoxContainer/Plus1
@onready var minus_1 = $Control/Window/MarginContainer/VBoxContainer/HBoxContainer/Minus1
@onready var counter = $Control/Window/MarginContainer/VBoxContainer/Counter
var score: int = 0


func _ready():
	counter.text = str(score)
func _on_plus_1_pressed():
	score += 1
	counter.text = str(score)


func _on_minus_1_pressed():
	score -= 1
	counter.text = str(score)
