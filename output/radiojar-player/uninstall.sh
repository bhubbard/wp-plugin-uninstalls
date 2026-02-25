#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'station_id'
wp option delete 'autoplay'
wp option delete 'player'
wp option delete 'default_image'
wp option delete 'navigation'
wp option delete 'container'

