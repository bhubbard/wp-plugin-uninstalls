#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registration'
wp option delete 'active_sitewide_plugins'
wp option delete 'wf_sn_active_plugins'
wp option delete 'wf_sn_encryption_key'
wp option delete 'wf_sn_site_id'
wp option delete 'wf_sn_encryption_key_old'
wp option delete 'wf_sn_vu_vulns_notice'
wp option delete 'wf_sn_review_notice'
wp option delete 'secnin_fs_migrated2fs'
wp option delete 'wf_sn_cf_blocked_count'
wp option delete 'wf_sn_cf_blocked_today'
wp option delete 'wf_sn_cf_bl_ips'
wp option delete 'wf_sn_cf_vl'
wp option delete 'wf_sn_cf_ips'
wp option delete 'wf_sn_banned_ips'
wp option delete 'wf_sn_cf'
wp option delete 'wf_sn_cs_results'
wp option delete 'wf_sn_results'
wp option delete 'wf_sn_el'
wp option delete 'secnin_last_checked_admin_id'
wp option delete 'sidebars_widgets'
wp option delete 'wf_sn_settings_migrated'
wp option delete 'wf_sn_options'
wp option delete 'wf_sn_wl'
wp option delete 'wf_sn_vu_settings_group'
wp option delete 'wf_sn_ss'
wp option delete 'wf_sn_api_allowed_origins'
wp option delete 'wf_sn_api_access_logs'
wp option delete 'wf_sn_ms_results'
wp option delete 'wf_sn_vu_last_update'
wp option delete 'wf_sn_known_vuln_db_counts'
wp option delete 'wf_sn_vu_last_email'
wp option delete 'wf_sn_vulnerabilities_cache'
wp option delete 'wf_sn_vulnerabilities_cache_timestamp'
wp option delete 'wf_sn_scan_summary'
wp option delete 'wf_sn_vu_vulns'
wp option delete 'wf_sn_vu_outdated'
wp option delete 'wf_sn_vu_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_sn_vu_file_validators_%'"
wp option delete 'security_tests_results'
wp option delete 'secnin_activation_redirect'
wp option delete 'wfsn_freemius_state'
wp option delete 'wf_sn_tests'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_security_ninja_%' OR option_name LIKE '_site_transient_security_ninja_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geoip_%' OR option_name LIKE '_site_transient_geoip_%'"
wp transient delete 'secnin_dashboard_updates'
wp transient delete 'wf_sn_return_vulnerabilities'
wp transient delete 'wp_vers_status'
wp transient delete 'secnin_manual_vuln_scan_last'
wp transient delete 'sn_secret_url_reset_success'
wp transient delete 'settings_errors'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'secnin_run_tests_event'
wp cron event delete 'secnin_run_core_scanner'
wp cron event delete 'secnin_check_direct_admin_creation'
wp cron event delete 'secnin_prune_logs_cron'
wp cron event delete 'wf_sn_check_new_admins'
wp cron event delete 'secnin_daily_vulnerability_warning_check'
wp cron event delete 'secnin_update_vuln_list'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sn_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sn_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sn_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sn_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secnin_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secnin_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secnin_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secnin_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secnin_2fa_setup_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secnin_2fa_setup_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secnin_2fa_setup_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secnin_2fa_setup_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secnin_2fa_code_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secnin_2fa_code_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secnin_2fa_code_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secnin_2fa_code_validated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
