#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'steammanager_api_key'
wp option delete 'steammanager_steam_id'
wp option delete 'steammanager_show_top_bar'
wp option delete 'steammanager_custom_templates'
wp option delete 'steammanager_api_key_encrypted'
wp option delete 'steammanager_bad_images_cache'
wp option delete 'steammanager_top_bar_pages'

# Delete Transients
wp transient delete 'steammanager_activation_notice'
wp transient delete 'steammanager_apps_cache'
wp transient delete 'steammanager_profile_cache'
wp transient delete 'steammanager_library_cache'

# Clear Cron Jobs
wp cron event delete 'steammanager_refresh_wishlist'

