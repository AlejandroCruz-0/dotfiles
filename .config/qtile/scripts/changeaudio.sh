pactl set-default-sink $(pactl list sinks short | awk '/hdmi-stereo-extra1/ {print $1}')