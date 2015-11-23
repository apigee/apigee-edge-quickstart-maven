#!/bin/bash

function do_help {
	echo "$0 -n <name> -u <backend-url>"
}

while [[ $# > 1 ]]; do
	key="$1"

	case $key in
		-n|--name)
			NAME="$2"
			shift
			;;
		-u|--url)
			URL="$2"
			shift
			;;
		*|-h|--help)
			do_help
			exit 1
			;;
	esac
	shift
done

if [[ -z "$NAME" || -z "$URL" ]]; then
	echo "Name (-n) and URL (-u) must be supplied"
	do_help
	exit 1
fi

if [[ ! -d "apiproxy" ]]; then
	echo "Must be run from the directory with \"apiproxy\" as a child"
	exit 1
fi

cat > apiproxy/targets/$NAME.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<TargetEndpoint name="$NAME">
  <Description/>
  <PreFlow name="PreFlow">
    <Request/>
    <Response/>
  </PreFlow>
  <Flows/>
  <PostFlow name="PostFlow"/>
  <HTTPTargetConnection>
    <URL>$URL</URL>
  </HTTPTargetConnection>
</TargetEndpoint>
EOF