#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bearmor_settings'
wp option delete 'bearmor_last_scan_time'
wp option delete 'bearmor_last_malware_scan'
wp option delete 'bearmor_malware_scan_results'
wp option delete 'bearmor_ip_whitelist'
wp option delete 'bearmor_malware_scan_enabled'
wp option delete 'bearmor_deep_scan_enabled'
wp option delete 'bearmor_header_x_frame'
wp option delete 'bearmor_2fa_enabled'
wp option delete 'bearmor_checksum_baseline_date'
wp option delete 'bearmor_malware_whitelist'
wp option delete 'bearmor_2fa_excluded_users'
wp option delete 'bearmor_site_id'
wp option delete 'bearmor_db_version'
wp option delete 'bearmor_needs_baseline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bearmor_plugin_baseline_%'"
wp option delete 'bearmor_last_uptime_sync'
wp option delete 'bearmor_scan_exclusions'
wp option delete 'bearmor_wpconfig_baseline'
wp option delete 'bearmor_muplugins_baseline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bearmor_theme_baseline_%'"
wp option delete 'bearmor_last_scan_status'
wp option delete 'bearmor_header_content_type'
wp option delete 'bearmor_header_referrer'
wp option delete 'bearmor_header_permissions'
wp option delete 'bearmor_header_xss'
wp option delete 'bearmor_hide_wp_version'
wp option delete 'bearmor_block_user_enum'
wp option delete 'bearmor_disable_login_errors'
wp option delete 'bearmor_disable_xmlrpc'
wp option delete 'bearmor_force_ssl'
wp option delete 'bearmor_plan'
wp option delete 'bearmor_last_verified'
wp option delete 'bearmor_grace_period'
wp option delete 'bearmor_login_events'
wp option delete 'bearmor_login_anomalies'
wp option delete 'bearmor_site_id_created'
wp option delete 'bearmor_license_key'
wp option delete 'bearmor_registration_time'
wp option delete 'bearmor_last_vulnerability_scan'
wp option delete 'bearmor_notified_vulns'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_core_checksums_%' OR option_name LIKE '_site_transient_bearmor_core_checksums_%'"
wp transient delete 'bearmor_baseline_checked'
wp transient delete 'bearmor_uploads_file_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_2fa_code_%' OR option_name LIKE '_site_transient_bearmor_2fa_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_2fa_user_%' OR option_name LIKE '_site_transient_bearmor_2fa_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_batch_%' OR option_name LIKE '_site_transient_bearmor_batch_%'"
wp transient delete 'bearmor_license_cache'
wp transient delete 'bearmor_pro_enabled'
wp transient delete 'bearmor_license_expires'
wp transient delete 'bearmor_trial_requested'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_lockout_email_%' OR option_name LIKE '_site_transient_bearmor_lockout_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bearmor_auto_disabling_%' OR option_name LIKE '_site_transient_bearmor_auto_disabling_%'"

# Clear Cron Jobs
wp cron event delete 'bearmor_scheduled_malware_scan'
wp cron event delete 'bearmor_initial_baseline_scan'
wp cron event delete 'bearmor_create_plugin_baseline'
wp cron event delete 'bearmor_create_theme_baseline'
wp cron event delete 'bearmor_cleanup_activity_log'
wp cron event delete 'bearmor_cleanup_expired_blocks'
wp cron event delete 'bearmor_daily_malware_scan'
wp cron event delete 'bearmor_daily_integrity_check'
wp cron event delete 'bearmor_daily_cleanup'
wp cron event delete 'bearmor_daily_ai_analysis'
wp cron event delete 'bearmor_weekly_deep_scan'
wp cron event delete 'bearmor_hourly_uptime_sync'
wp cron event delete 'bearmor_daily_vulnerability_scan'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bearmor_2fa_remember_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bearmor_2fa_remember_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bearmor_2fa_remember_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bearmor_2fa_remember_token'"
