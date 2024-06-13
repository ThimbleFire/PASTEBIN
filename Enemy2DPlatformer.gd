#NOTE: actors will be able to navigate the game world just like the player, this includes climbing scenery
# grappling and sliding down walls.
extends Actor

#NOTE: I'm bored at work and just want to type something
# I think what I want to make is a state machine that relies on a dictionary of operations
# This object is an enemy type that will chase the player character
# We need to figure out how to get its pathfinding to jump between platforms
# https://youtu.be/OBBLgrhvaIo
# https://stackoverflow.com/questions/67401939/how-can-i-make-a-rigid-body-jump-in-godot-without-givign-it-the-ability-to-fly

@export var tilemap
@export var player

var grid_position : Vector2i:
    get: return tilemap.world_to_map(position)
var is_player_above : bool:
    get: return grid_position.y < player.grid_position.y

enum Operations {
    NONE,
    CHASE,
    ATTACK,
    IDLE,
    FALL
}

#NOTE: packets may need to be defined in _ready()
packets = {
    Operations.CHASE : process_chase,
    Operations.ATTACK : process_attack,
    Operations.IDLE : process_idle
}

var current_operation = Operations.NONE

func _process(delta):
    packets[current_operation].call(delta)
    pass

#NOTE: Apparently you can use `test_motion` to detect whether a motion (such as a jump) will result in a collision
func process_chase(delta):
    pass

func process_attack(delta):
    pass

func process_idle(delta):
    pass
