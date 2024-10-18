sketchybar --add alias "BusyCal Menu,Item-0" right \
	--set "BusyCal Menu,Item-0" update_freg=60
# --set click_script="osascript -e 'tell application \"BusyCal\" to activate'"

sketchybar --add alias "QWeather,Item-0" right \
	--set "QWeather,Item-0" update_freg=60

app_bracket=(
	background.color="$BACKGROUND_COLOR"
)
# sketchybar --add bracket "BusyCal Menu,Item-0" \
# 	--set default_bracket "${app_bracket[@]}"
