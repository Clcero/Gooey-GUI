extends CanvasLayer

@onready var canvas_layer = $"."

func _input(event):
	if event.is_action_pressed("ui_accept"):
		canvas_layer.visible = not canvas_layer.visible

