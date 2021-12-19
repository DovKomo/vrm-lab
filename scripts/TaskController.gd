extends Node

var task_pan_idx = 0

export (PackedScene) var omelette_scene

func _on_PanPlacement_egg_action_completed():
	if task_pan_idx == 0:
		task_pan_idx = task_pan_idx + 1
		var omlette = omelette_scene.instance()
		print(omlette)
		get_parent().add_child(omlette)
		omlette.translation = Vector3(-0.525, 0.672, 3.336)

export (PackedScene) var omelette_in_plate_scene

func _on_OmeletPlatePlacement_omelette_action_complete():
	if task_pan_idx == 1:
		task_pan_idx = task_pan_idx + 1
		var omlette_in_plate = omelette_in_plate_scene.instance()
		print(omlette_in_plate)
		get_parent().add_child(omlette_in_plate)
		omlette_in_plate.translation = Vector3(-0.952, 0.665, 3.094)
#-----------------------------------------------------------------------

var task_board_idx = 0
export (PackedScene) var meat_scene

func _on_CuttingBoardPlacement_meat_action_completed():
	if task_board_idx == 0:
		task_board_idx = task_board_idx + 1
		var meat = meat_scene.instance()
		print(meat)
		get_parent().add_child(meat)
		meat.translation = Vector3(-1.003, 0.643, 3.424)

export (PackedScene) var tomato_scene

func _on_CuttingBoardPlacement_tomato_action_completed():
	if task_board_idx == 1:
		task_board_idx = task_board_idx + 1
		var tomato = tomato_scene.instance()
		print(tomato)
		get_parent().add_child(tomato)
		tomato.translation = Vector3(-1.273, 0.605, 3.558)

export (PackedScene) var burger_scene

func _on_BurgerPlatePlacement_burger_action_completed():
	var burger = burger_scene.instance()
	print(burger)
	get_parent().add_child(burger)
	burger.translation = Vector3(-1.831, 0.662, 3.541)

