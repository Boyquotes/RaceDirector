extends TextureButton


# Declare member variables here. Examples:
export var hovered_FMOD_path: String = "event:/UI/Nav_Mouseover"
export var unhovered_FMOD_path: String = ""
export var pressed_FMOD_path: String = "event:/UI/Nav_Accept"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("mouse_entered", self,"onHovered")
	self.connect("mouse_exited", self, "onUnhovered")
	self.connect("pressed", self, "onPressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func onPressed():
	Fmod.play_one_shot(pressed_FMOD_path, self)
	print("pressed")

func onHovered():
	Fmod.play_one_shot(hovered_FMOD_path, self)
	print("hovered")

func onUnhovered():
	Fmod.play_one_shot(unhovered_FMOD_path, self)
	print("unhovered")
