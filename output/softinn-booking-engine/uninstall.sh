#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'softinn_hotel_id'
wp option delete 'softinn_theme_color'
wp option delete 'softinn_theme_color_temp'
wp option delete 'softinn_admin_nonce'

