#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_star_mlb_standings'
wp option delete 'star_mlb_standings_js'
wp option delete 'star_mlb_standings_update'

