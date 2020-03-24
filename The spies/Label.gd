extends Label



func _on_TextEdit_text_changed():
	    var lab = get_node("Label")
	    var edit = get_node("TextEdit")
	    lab.set_text(edit.get_text())
