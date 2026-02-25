#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'elementor_controls_usage'
wp option delete 'wowelements_widgets'
wp option delete 'wowelements_extensions'
wp option delete 'wowelements_google_map_key'
wp option delete 'wowelements_mapbox_access_token'
wp option delete 'wowelements_facebook_app_id'
wp option delete 'wowelements_facebook_app_secret'
wp option delete 'wowelements_google_client_id'
wp option delete 'wowelements_yelp_client_id'
wp option delete 'wowelements_yelp_api_key'
wp option delete 'wowelements_other_settings'
wp option delete 'wowe_compare_products_page_id'
wp option delete 'lcp_enable_magic_copy_btn_specific_section'
wp option delete 'lcp_enable_copy_paste_btn'
wp option delete 'lcp_enable_magic_copy_btn'
wp option delete 'lcp_enable_magic_copy_btn_login_user'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp option delete 'wowelements_api_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'wowelements_widget_usage_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wowe_changelog_widget_%' OR option_name LIKE '_site_transient_wowe_changelog_widget_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wowe-category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wowe-category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wowe-category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wowe-category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowelements_video_link_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowelements_video_link_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowelements_video_link_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowelements_video_link_meta_key'"
