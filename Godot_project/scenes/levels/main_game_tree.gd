extends Node
class_name MainGameTree
@onready var settings_menu: SettingsWindows = %settingsMenu


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		EventBus.generalPause = !EventBus.generalPause
		print(EventBus.generalPause)

	get_tree().paused = EventBus.generalPause
	get_tree().paused = EventBus.fromMenuPause
