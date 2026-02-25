#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialvibe_flash_id'
wp option delete 'socialvibe_user_id'
wp option delete 'socialvibe_width'
wp option delete 'socialvibe_widget_title'
wp option delete 'socialvibe_height'
wp option delete 'socialvibe_noflash'
wp option delete 'socialvibe_widget_display'
wp option delete 'socialvibe_color_mode'

