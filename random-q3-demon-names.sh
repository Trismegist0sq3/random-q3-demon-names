#!/bin/bash
# Name ......:  q3-random-demon-names.sh
# Date ......:  8/18/25
# Author ....:  Trismegist0s
# Purpose ...:  Randomly select a demon name from array to use when connecting to q3 server

# Array of wizard names
quake_names=(
  "abaddon" "abigor" "alloces" "andrass" "asmodeus"  
  "astaroth" "astarte" "azazel" "baal" "balberith"  
  "baphomet" "barbatos" "beelzebub" "belial" "belphegor"  
  "bifrons" "buer" "camio" "crocell" "foras"  
  "forneus" "furfur" "gaap" "gamigin" "glasyalabolas"  
  "gremory" "haagenti" "incubus" "legion" "leviathan"  
  "lilith" "lucifer" "malphas" "mammon" "marbas"  
  "marchosias" "mephisto" "morax" "naberius" "onyx"  
  "oryax" "paimon" "pan" "phenex" "raum"  
  "sabnock" "shax" "sitri" "stolas" "succubus"  
  "valak" "valefar" "vassago" "vepar" "vine"  
  "volac" "zepar"  
)

# Quake III color codes excluding white (^7)
color_codes=( "^0" "^1" "^2" "^3" "^4" "^5" "^6" "^8" "^9" )

# Pick a random name
random_name="${quake_names[RANDOM % ${#quake_names[@]}]}"

# Pick a random color code for the first letter
first_color="${color_codes[RANDOM % ${#color_codes[@]}]}"

# Format the name: first letter in color, rest in white (^7)
first_letter="${random_name:0:1}"
rest="${random_name:1}"
styled_name="${first_color}${first_letter}^7${rest}"

# Output the command
/games/quake3e/quake3e.x64 +set cl_renderer vulkan +exec load-config-files.cfg +connect ffa.q3a51.com +seta "name ${styled_name}"