#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postman_options'
wp option delete 'post_smtp_mobile_app_connection'
wp option delete 'post_smtp_use_from_main_site'
wp option delete 'postman_dashboard_ad'
wp option delete 'mainwp_child_pubkey'
wp option delete 'mainwp_child_siteid'
wp option delete 'post_smtp_server_url'
wp option delete 'ps_dismissed_mobile_notice'
wp option delete 'c2c_configure_smtp'
wp option delete 'cimy_swift_smtp_options'
wp option delete 'swpsmtp_options'
wp option delete 'wp_smtp_options'
wp option delete 'post_smtp_clean_diagnostic_report_data'
wp option delete 'post_smtp_diagnostic_report_data'
wp option delete 'postman_rat'
wp option delete 'postman_db_version'
wp option delete 'ps_migrate_logs'
wp option delete 'post_smtp_pro'
wp option delete '_transient__mailster_send_period_timeout'
wp option delete '_transient__mailster_send_period'
wp option delete 'postman_auth_token'
wp option delete 'post_smtp_gmail_auth_url'
wp option delete 'postman_release_version'
wp option delete 'postman_dismiss_donation'
wp option delete 'postman_state'
wp option delete 'postman_stats'
wp option delete 'postman_session'
wp option delete 'ps_hide_less_secure'
wp option delete 'postman_office365_oauth'
wp option delete 'post_smtp_office365_auth_url'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'post_smtp_auth_nonce'
wp transient delete 'ps_dismiss_update_notice'
wp transient delete 'sendpulse_token'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'ps-skip-bfcm'
wp transient delete 'post_smtp_skip_banner'
wp transient delete 'ps_rat_has_sent'
wp transient delete '_post_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'postman_rat_email_report'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
