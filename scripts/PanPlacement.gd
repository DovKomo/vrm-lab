extends Area

export (String) var target_name

var egg_in_place = false

signal egg_action_completed

func _on_PanPlacement_body_entered(body):
	if not egg_in_place:
		if body.name == target_name:
			egg_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			emit_signal("egg_action_completed")
