extends Label

var m
var s = 120

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.set_wait_time(1)
	$Timer.start()


func _process(delta):
	_time()


func _time():
	if s < 60:
		set_text(str(s))
	if s >= 60 && s < 120:
		m = 1
		set_text(str("0",m,":",s-60))
	if s == 120:
		m=2
		set_text(str("0",m,":",s-120))


func _on_Timer_timeout():
	s = s-1