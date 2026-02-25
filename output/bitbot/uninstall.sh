#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitbot_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bitbot_%'"
wp option delete 'bitbot_enabled'
wp option delete 'bitbot_widget_position'
wp option delete 'bitbot_primary_color'
wp option delete 'bitbot_welcome_message'

# Clear Cron Jobs
wp cron event delete 'bitbot_scheduled_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bitbot_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bitbot_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bitbot_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bitbot_keywords'"
