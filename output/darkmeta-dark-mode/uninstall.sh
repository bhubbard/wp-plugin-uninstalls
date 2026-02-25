#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'darkmeta_dark_mode_enabled'
wp option delete 'darkmeta_dark_mode_background_color'
wp option delete 'darkmeta_dark_mode_text_color'
wp option delete 'darkmeta_dark_mode_icon_light'
wp option delete 'darkmeta_dark_mode_icon_dark'

