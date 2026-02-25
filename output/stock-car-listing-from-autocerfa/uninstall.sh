#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autocerfa_debug'
wp option delete 'autocerfa_processing'
wp option delete 'car_per_page'
wp option delete 'single_page_slug'
wp option delete 'autocerfa_theme_color_1'
wp option delete 'autocerfa_theme_color_2'
wp option delete 'autocerfa_theme_color_3'
wp option delete 'daily_sync'
wp option delete 'autocerfa_view_style'
wp option delete 'filter_option'
wp option delete 'cropping_image_as_aspect_ration'
wp option delete 'autocerfa_requires_flush'
wp option delete 'ops_token'
wp option delete 'autocerfa_shortcodes_settings'
wp option delete 'autocerfa_single_page'
wp option delete 'autocerfa_car_list_page'
wp option delete 'autocerfa_reload'
wp option delete 'sending_email'
wp option delete 'opcodespace_subscription'
wp option delete 'autocerfa_price'
wp option delete 'autocerfa_plugin_version'
wp option delete 'version'
wp option delete 'autocerfa_log_file_code'
wp option delete 'autocerfa_token'
wp option delete 'autocerfa_no_of_cars'
wp option delete 'lead_updated_date'
wp option delete 'autocerfa_username'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'autocerfa_add_every_five_minutes'
wp cron event delete 'autocerfa_daily_event'
wp cron event delete 'autocerfa_twicedaily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raw_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raw_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raw_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raw_images'"
