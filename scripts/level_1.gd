extends Node2D


func _on_maze_body_exited(body):
	print("Exited...")
	get_tree().reload_current_scene()
