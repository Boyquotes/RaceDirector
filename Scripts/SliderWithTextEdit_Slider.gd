extends HSlider


# Declare member variables here. Examples:
export var sliderMove_FMOD_path: String = "event:/UI/Nav_Slider"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("value_changed", self, "onSliderMove")


func _on_GridContainer_CountUpdated(newCount):
	value = float(newCount)

func onSliderMove(_value: float):
	Fmod.play_one_shot(sliderMove_FMOD_path, self)
	print("slider move")
