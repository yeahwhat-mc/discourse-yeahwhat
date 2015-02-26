# name: discourse-yeahwhat
# about: Discourse customizations for YEAHWHAT?!
# version: 1.0.0
# authors: Jonas Friedmann

###
# Minecraft avatars
###

after_initialize {
  load File.expand_path("../minecraft_avatars.rb", __FILE__)
}

register_asset "javascripts/minecraft_avatars.js", :server_side

###
# Minecraft heads
# (credits to @NomNuggetNom!)
###

register_asset "javascripts/minecraft_heads.js", :server_side
