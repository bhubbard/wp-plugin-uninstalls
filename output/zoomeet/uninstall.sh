#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zmeet_zoom_settings'
wp option delete 'zmeet_addons_settings'
wp option delete 'zmeet_integration_settings'
wp option delete 'zmeet_zoom_global_oauth_data'
wp option delete 'zmeet_zoom_users'
wp option delete 'zmeet_is_sdk_prepare'
wp option delete 'zmeet_is_server_auth_prepare'
wp option delete 'zmeet_google_meet_settings'
wp option delete 'zmeet_jitsi_settings'
wp option delete 'zmeet_webex_settings'
wp option delete 'zmeet_google_meet_account'
wp option delete 'zoom_api_enable_debug_log'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'zmeet_zoom_settings_live'
wp transient delete 'zmeet_jitsi_jwt_token'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_meeting_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_meeting_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_meeting_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_meeting_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_join_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_join_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_join_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_join_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_start_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_start_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_start_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_start_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_meeting_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_meeting_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_meeting_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_meeting_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_zoom_webinar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_zoom_webinar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_zoom_webinar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_zoom_webinar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet__meeting_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet__meeting_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet__meeting_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet__meeting_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_meeting_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_meeting_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_meeting_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_meeting_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_meeting_start_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_meeting_start_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_meeting_start_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_meeting_start_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_connect_as_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_connect_as_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_connect_as_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_connect_as_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_connect_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_connect_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_connect_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_connect_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zmeet_webex_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zmeet_webex_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zmeet_webex_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zmeet_webex_access_token'"
