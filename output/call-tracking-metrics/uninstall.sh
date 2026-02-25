#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctm_api_base_url'
wp option delete 'ctm_debug_enabled'
wp option delete 'ctm_dashboard_enabled'
wp option delete 'ctm_auto_inject_tracking_script'
wp option delete 'ctm_api_key'
wp option delete 'ctm_api_secret'
wp option delete 'ctm_forms_without_phone'
wp option delete 'ctm_api_cf7_enabled'
wp option delete 'ctm_api_gf_enabled'
wp option delete 'call_track_account_script'
wp option delete 'ctm_api_auth_account'
wp option delete 'ctm_cf7_notice_dismissed'
wp option delete 'ctm_gf_notice_dismissed'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'ctm_log_retention_days'
wp option delete 'ctm_log_auto_cleanup'
wp option delete 'ctm_api_response_times'
wp option delete 'ctm_api_calls_24h'
wp option delete 'ctm_api_active_key'
wp option delete 'ctm_api_active_secret'
wp option delete 'ctm_tracking_override_checkbox'
wp option delete 'ctm_api_dashboard_enabled'
wp option delete 'ctm_api_tracking_enabled'
wp option delete 'ctm_api_cf7_logs'
wp option delete 'ctm_api_gf_logs'
wp option delete 'ctm_duplicate_prevention_enabled'
wp option delete 'ctm_duplicate_prevention_expiration'
wp option delete 'ctm_duplicate_prevention_use_session'
wp option delete 'ctm_duplicate_prevention_fallback_ip'
wp option delete 'ctm_max_log_entries_per_day'
wp option delete 'ctm_max_log_size_mb'
wp option delete 'ctm_max_total_log_size_mb'
wp option delete 'ctm_max_form_log_entries'
wp option delete 'ctm_max_form_log_size_mb'
wp option delete 'ctm_duplicate_prevention_update_notice_pending'
wp option delete 'ctm_duplicate_prevention_migrated_2_1_8'
wp option delete 'ctm_api_tracking_script'
wp option delete 'ctm_log_email_notifications'
wp option delete 'ctm_log_notification_email'
wp option delete 'ctm_include_email'
wp option delete 'ctm_include_name'

# Delete Transients
wp transient delete 'ctm_last_connection_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctm_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctm_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctm_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctm_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctm_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctm_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctm_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctm_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctm_import_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctm_import_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctm_import_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctm_import_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctm_sync_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctm_sync_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctm_sync_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctm_sync_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctm_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctm_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctm_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctm_form_data'"
