#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awca_auth_settings'
wp option delete 'awca_refresh_token_fail'
wp option delete 'awca_granted_scopes'
wp option delete 'custom_dimension_generated'
wp option delete 'ga_properties'
wp option delete 'awca_access_token'
wp option delete 'awca_dash_settings'
wp option delete 'awca_settings'
wp option delete 'awca_event_settings'
wp option delete 'awca_track_settings'
wp option delete 'measurement_key'
wp option delete 'awca_advance_settings'
wp option delete 'awca_review_request_time'
wp option delete 'measurement_key_process'
wp option delete 'custom_dimension_process'
wp option delete 'awca_refresh_token'
wp option delete 'dimension_key'
wp option delete 'awca_current_tab_id'
wp option delete 'print_js'
wp option delete 'awca_old_url'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awca_already_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awca_already_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awca_already_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awca_already_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awca_refund_already_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awca_refund_already_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awca_refund_already_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awca_refund_already_tracked'"
