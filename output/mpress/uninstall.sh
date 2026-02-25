#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_one_signal_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_one_signal_rest_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_blog_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_app_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_app_slogan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mpress_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_adsense_publisher_id'"
wp option delete 'mpress-app-logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpress_push_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpress_push_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpress_push_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpress_push_notification'"
