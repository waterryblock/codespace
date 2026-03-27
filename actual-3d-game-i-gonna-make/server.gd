extends Node

const PORT = 9999
var enet_peer = ENetMultiplayerPeer.new()

func _ready():
	print("Starting dedicated server on port ", PORT)
	enet_peer.create_server(PORT)
	multiplayer.multiplayer_peer = enet_peer
	print("Server started! Players can join at your codespace URL:9999")
	print("Waiting for players...")

func _process(delta):
	# Keep the server running
	pass
