extends NinePatchRect

var self_opened = false

@onready var button1 = $VBoxContainer/CheckButton1
@onready var button2 = $VBoxContainer/CheckButton2
@onready var button3 = $VBoxContainer/CheckButton3

@onready var background_color = $"../BackgroundColor"

func _input(event):
	if event.is_action_pressed("ui_accept"):
		toggle_menu()
		
func toggle_menu():
	self_opened = not self_opened
	if self_opened:
		self.visible = true
	else:
		self.visible = false

func _on_check_button_1_pressed():
	handleButtonPress("1")

func _on_check_button_2_pressed():
	handleButtonPress("2")

func _on_check_button_3_pressed():
	handleButtonPress("3")

func handleButtonPress(button):
	var origColor = $ColorGrid/Panel8/ColorRect.color
	var Color1 = $ColorGrid/Panel1/ColorRect.color
	var Color2 = $ColorGrid/Panel2/ColorRect.color
	var Color3 = $ColorGrid/Panel3/ColorRect.color

	
	if button == "1":
		background_color.color = Color1
		button2.set_pressed_no_signal(false)
		button3.set_pressed_no_signal(false)
	if button == "2":
		background_color.color = Color2
		button1.set_pressed_no_signal(false)
		button3.set_pressed_no_signal(false)
	if button == "3":
		background_color.color = Color3
		button2.set_pressed_no_signal(false)
		button1.set_pressed_no_signal(false)
	if button == "4":
		background_color.color = origColor
		button1.set_pressed_no_signal(false)
		button2.set_pressed_no_signal(false)
		button3.set_pressed_no_signal(false)


func _on_button_pressed():
	handleButtonPress("4")
