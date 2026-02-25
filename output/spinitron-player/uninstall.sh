#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spinitron_player_options'

# Delete Transients
wp transient delete 'spinitron_show_today'

