extends Area

export (String) var target_name

var omelette_in_place = false

signal omelette_action_complete

func _on_OmeletPlatePlacement_body_entered(body):
	if not omelette_in_place:
		if body.name == target_name:
			omelette_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			emit_signal("omelette_action_complete")
