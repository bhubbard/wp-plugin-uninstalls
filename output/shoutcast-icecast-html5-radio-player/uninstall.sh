#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shoutcast-icecast-html5-player-radiolink'
wp option delete 'shoutcast-icecast-html5-player-radiotype'
wp option delete 'shoutcast-icecast-html5-player-bcolor'
wp option delete 'shoutcast-icecast-html5-player-image'
wp option delete 'shoutcast-icecast-html5-player-facebook'
wp option delete 'shoutcast-icecast-html5-player-twitter'
wp option delete 'shoutcast-icecast-html5-player-title'
wp option delete 'shoutcast-icecast-html5-player-artist'

