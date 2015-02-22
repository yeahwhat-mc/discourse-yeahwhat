# name: discourse-yeahwhat
# about: Discourse customizations for YEAHWHAT?!
# version: 1.0.0
# authors: Jonas Friedmann

plugins_dir = File.expand_path(File.dirname(__FILE__))

###
# Minecraft avatars
###

eval File.read("#{plugins_dir}/minecraft_avatars.rb")

###
# Minecraft heads
# (credits to @NomNuggetNom!)
###

register_asset "javascripts/minecraft_heads.js", :server_side
