#!/bin/sh
# while inotifywait -mr ./ --exclude '(_book|db-data|.git|gogs|jenkins|node_modules)' -e close_write -e create -e delete -e move; do
#   gitbook build
# done

inotifywait -rm "./" --format '%w%f' --exclude '(_book|db-data|.git|gogs|jenkins|node_modules)' -e close_write -e create -e delete -e move | while read file ; do
  gitbook build
done &

live-server _book

