extends RigidBody2D

# DIALOGUE
var chat_head
var chat_name
#NOTE: consider using Dialogue Nodes plugin (https://godotengine.org/asset-library/asset/2400)
var chat_script
var can_talk

# NAVIGATION
var can_jump
var can_walk
var can_chase
var can_grapple
var can_climb
var movement_speed
var climb_speed

# MISC
var stamina : int
var has_stamina:
    get: return stamina != -1
var uses_stamina_combat
var uses_stamina_navigating

# COMBAT
var can_take_damage
var can_attack
var damage
var health
