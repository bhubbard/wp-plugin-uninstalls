#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'word_balloon_pro_license_info'
wp option delete 'word_balloon_wallpaper_settings'
wp option delete 'word_balloon_favorite_settings'
wp option delete 'word_balloon_admin_settings'
wp option delete 'word_balloon_post_settings'
wp option delete 'word_balloon_system_settings'
wp option delete 'word_balloon_version'
wp option delete 'word_balloon_db_version'
wp option delete 'word_balloon'

