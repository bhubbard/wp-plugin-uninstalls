#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blm_setting_google_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_%'"
wp option delete 'blm_setting_bloom_api_key'
wp option delete 'blm_setting_bloom_publisher_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_publishdate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_enddate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_expiration_%'"
wp option delete 'blm_setting_amp'
wp option delete 'blm_setting_tab'
wp option delete 'blm_setting_search_enabled'
wp option delete 'blm_setting_search_preview'
wp option delete 'blm_setting_search_settings'
wp option delete 'blm_setting_search_shortlink'
wp option delete 'blm_setting_search_icon_display'
wp option delete 'blm_setting_search_icon_delay_seconds'
wp option delete 'blm_setting_search_open_bottom'
wp option delete 'blm_setting_search_open_seconds'
wp option delete 'blm_setting_search_cookies_enabled'
wp option delete 'blm_setting_map_append_enabled'
wp option delete 'blm_setting_map_append_height'
wp option delete 'blm_setting_map_append_zoom'
wp option delete 'blm_setting_map_append_position'
wp option delete 'blm_setting_feed_append_enabled'
wp option delete 'blm_setting_feed_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_savepost_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_savepost_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_savepost_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_savepost_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_location_formatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_location_formatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_location_formatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_location_formatted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_location_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_location_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_location_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_location_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_location_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_location_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_location_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_location_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_location_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_location_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_location_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_location_components'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blm_post_location_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blm_post_location_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blm_post_location_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blm_post_location_data'"
