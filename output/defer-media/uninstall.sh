#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'defer-media-enabled'
wp option delete 'defer-media-appearanceOffsetImages'
wp option delete 'defer-media-appearanceOffsetVideos'
wp option delete 'defer-media-appearanceOffsetIframes'

