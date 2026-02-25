#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wemeet_webex_settings'
wp option delete 'wemeet_zoom_settings'
wp option delete 'wemeet_jitsi_settings'
wp option delete 'wemeet_google_meet_settings'
wp option delete 'wemeet_addons_settings'
wp option delete 'wemeet_integration_settings'
wp option delete 'wemeet_webex_auth_prepare'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wemeet_oauth_state_%' OR option_name LIKE '_site_transient_wemeet_oauth_state_%'"
wp transient delete 'wemeet_zoom_settings_live'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_webex_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_webex_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_webex_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_webex_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_webex_meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_webex_meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_webex_meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_webex_meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_webex_join_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_webex_join_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_webex_join_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_webex_join_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_webex_meeting_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_webex_meeting_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_webex_meeting_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_webex_meeting_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_webex_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_webex_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_webex_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_webex_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet__meeting_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet__meeting_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet__meeting_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet__meeting_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meeting_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_meeting_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_meeting_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_meeting_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_meeting_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_meeting_start_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_meeting_start_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_meeting_start_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_meeting_start_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_connect_as_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_connect_as_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_connect_as_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_connect_as_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemeet_connect_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemeet_connect_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemeet_connect_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemeet_connect_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wemeet_visibility_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wemeet_visibility_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wemeet_visibility_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wemeet_visibility_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wemeet_visibility_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wemeet_visibility_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wemeet_visibility_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wemeet_visibility_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wemeet_visibility_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wemeet_visibility_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wemeet_visibility_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wemeet_visibility_users'"
