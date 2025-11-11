<#
    .SYNOPSIS
        Set Quake 3 name to random demon name

    .DESCRIPTION
        Select a random demon name from the $quake_names array and set the color of the first letter to a random color other than white.  

    .EXAMPLE
        PS C:\> .\random-q3-demon-names.ps1

    .NOTES
        Name ......:  q3-random-demon-names.ps1
        Date ......:  8/18/25
        Author ....:  Trismegist0s
        Purpose ...:  Randomly select a demon name from array to use when connecting to q3 server
#>

# Array of demon names
$quake_names = @(
  "abaddon", "abigor", "alloces", "andrass", "asmodeus",
  "astaroth", "astarte", "azazel", "baal", "balberith",
  "baphomet", "barbatos", "beelzebub", "belial", "belphegor",
  "bifrons", "buer", "camio", "crocell", "foras",
  "forneus", "furfur", "gaap", "gamigin", "glasyalabolas",
  "gremory", "haagenti", "incubus", "legion", "leviathan",
  "lilith", "lucifer", "malphas", "mammon", "marbas",
  "marchosias", "mephisto", "morax", "naberius", "onyx",
  "oryax", "paimon", "pan", "phenex", "raum",
  "sabnock", "shax", "sitri", "stolas", "succubus",
  "valak", "valefar", "vassago", "vepar", "vine",
  "volac", "zepar"
)

# Quake III color codes excluding white (^7)
$color_codes = @("^0", "^1", "^2", "^3", "^4", "^5", "^6", "^8", "^9")

# Pick a random name and color
$random_name = Get-Random -InputObject $quake_names
$first_color = Get-Random -InputObject $color_codes

# Split the first letter and the rest
$first_letter = $random_name.Substring(0,1)
$rest = $random_name.Substring(1)

# Format the styled name
$styled_name = "${first_color}${first_letter}^7${rest}"

# Set the value of this variable to the path of your Quake 3 installation directory
$quake3_dir = "C:\Games\Quake3"

# Set the value of this variable to the name of your Quake 3 executable file
$quake3_executable = "quake3e-vulkan.x64.exe"

# Build the Quake 3 launch command
$command = "$($quake3_dir)\$($quake3_executable) +connect ffa.q3a51.com +seta `"name ${styled_name}`""

# Run the Quake 3 executable command
$command
