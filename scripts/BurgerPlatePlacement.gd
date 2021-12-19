extends Area


export (String) var target_bottom_bread_name
export (String) var target_meat_name
export (String) var target_cheese_name
export (String) var target_salad_name
export (String) var target_tomato_name
export (String) var target_top_bread_name

var bottom_bread_in_place = false
var meat1_in_place = false
var meat2_in_place = false
var cheese_in_place = false
var salad_in_place = false
var tomato_in_place = false
var top_bread_in_place = false


signal burger_action_completed


func _on_BurgerPlatePlacement_body_entered(body):
	if not bottom_bread_in_place:
		if body.name == target_bottom_bread_name:
			bottom_bread_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0, 0.01, 0)
			body.rotation = Vector3(0,0,0)
	elif not meat1_in_place:
		if body.name == target_meat_name:
			meat1_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0, 0.005, 0) # 0.2
			body.rotation = Vector3(0,0,0)
	elif not cheese_in_place:
		if body.name == target_cheese_name:
			cheese_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0, 0.035, 0)
			body.rotation = Vector3(0,0,0)
	elif not meat2_in_place:
		if body.name == target_meat_name:
			meat2_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0, 0.05, 0)
			body.rotation = Vector3(0,0,0)
	elif not salad_in_place:
		if body.name == target_salad_name:
			salad_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0, 0.07, 0)
			body.rotation = Vector3(0,0,0)
	elif not tomato_in_place:
		if body.name == target_tomato_name:
			tomato_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)
			# set body as static
			add_child(body)
			body.mode = RigidBody.MODE_STATIC
			body.translation = Vector3(0.055, 0.06, 0)
			body.rotation = Vector3(0,0,0)
	elif not top_bread_in_place:
		if body.name == target_top_bread_name:
			top_bread_in_place = true
			# remove body from the hand
			var parent = body.get_parent()
			parent.remove_child(body)			
			emit_signal("burger_action_completed")
			
