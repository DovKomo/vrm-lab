extends Area

export (String) var target_meat
export (String) var target_tomato
export (String) var target_knife

var meat_in_place = false
var tomato_in_place = false
var knife_in_place = false

signal meat_action_completed
signal tomato_action_completed

func _on_CuttingBoardPlacement_body_entered(body):
	if not meat_in_place:
		if body.name == target_meat:
			meat_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0.05, 0, 0)
	if not tomato_in_place:
		if body.name == target_tomato:
			tomato_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(-0.05, 0, 0)
	if not knife_in_place:
		if body.name == target_knife:
			if tomato_in_place:
				emit_signal("tomato_action_completed")
			if meat_in_place:
				emit_signal("meat_action_completed")

