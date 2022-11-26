#!/bin/sh

format=$(jq -c <<-EOF
{
  "text": "{{markup_escape(title)}} / {{markup_escape(artist)}}",
  "class": "{{lc(status)}}",
  "tooltip": "<big>{{markup_escape(title)}}</big>\nby {{markup_escape(artist)}}\non {{markup_escape(album)}}"
}
EOF
)

playerctl metadata --all-players --follow --format "$format"
