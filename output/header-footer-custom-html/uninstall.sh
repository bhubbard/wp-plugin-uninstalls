#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enweby_hfch_header_html'
wp option delete 'enweby_hfch_header_html_sticky'
wp option delete 'enweby_hfch_apply_to_header_options'
wp option delete 'enweby_hfch_header_post_field_id'
wp option delete 'enweby_hfch_header_page_field_id'
wp option delete 'enweby_hfch_footer_html'
wp option delete 'enweby_hfch_footer_html_sticky'
wp option delete 'enweby_hfch_apply_to_footer_options'
wp option delete 'enweby_hfch_footer_post_field_id'
wp option delete 'enweby_hfch_footer_page_field_id'
wp option delete 'enweby_hfch_custom_script'
wp option delete 'enweby_hfch_script_location'
wp option delete 'enweby_hfch_apply_to_scriptcss_options'
wp option delete 'enweby_hfch_scriptcss_post_field_id'
wp option delete 'enweby_hfch_scriptcss_page_field_id'
wp option delete 'enweby_hfch_custom_css'
wp option delete 'enweby_hfch_header_bg_color'
wp option delete 'enweby_hfch_header_bg_image'
wp option delete 'enweby_hfch_header_html_bg_repeat'
wp option delete 'enweby_hfch_header_html_bg_position'
wp option delete 'enweby_hfch_header_html_bg_attachment'
wp option delete 'enweby_hfch_header_html_bg_size'
wp option delete 'enweby_hfch_footer_bg_color'
wp option delete 'enweby_hfch_footer_bg_image'
wp option delete 'enweby_hfch_footer_html_bg_repeat'
wp option delete 'enweby_hfch_footer_html_bg_position'
wp option delete 'enweby_hfch_footer_html_bg_attachment'
wp option delete 'enweby_hfch_footer_html_bg_size'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enwb_hfch_settings_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enwb_hfch_settings_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enwb_hfch_settings_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enwb_hfch_settings_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enwb_hfch_settings_meta_relation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enwb_hfch_settings_meta_relation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enwb_hfch_settings_meta_relation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enwb_hfch_settings_meta_relation'"
