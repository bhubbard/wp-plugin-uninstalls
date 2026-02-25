#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpnts_log_update_done'
wp option delete 'wpnts_global_api_settings'
wp option delete 'wps_security_scan_exclusions'
wp option delete 'wpnts_pro_upgrade_required'
wp option delete 'wpnts_pro_old_version'
wp option delete 'wpnts_pro_upgrade_notice_dismissed'
wp option delete 'maintenance_mode_queries'
wp option delete 'wpnts_analytics_settings'
wp option delete 'active_users_data'
wp option delete 'NotifierReviewNotice'
wp option delete 'NotifierUpgradeNotice'
wp option delete 'DefaultNTReviewNoticeInterval'
wp option delete 'DefaultNTUpgradeInterval'
wp option delete 'wpnts_captcha_settings'
wp option delete 'wpnts_schedules_interval_woocommerce_settings'
wp option delete 'wpnts_schedules_interval_comment_settings'
wp option delete 'wpnts_total_plugin_updates'
wp option delete 'wpnts_activated_plugins'
wp option delete 'wpnts_deactivated_plugins'
wp option delete 'wpnts_user_login_info'
wp option delete 'wpnts_user_daily_login_info'
wp option delete 'wpnts_user_track_failed_login'
wp option delete 'wpnts_webhook_site_settings'
wp option delete 'wpnts_schedules_maintenannotice_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'wpnts_default_interval'
wp option delete 'wpnts_schedules_interval_site_settings'
wp option delete 'wpnts_plugin_list'
wp option delete 'wpnts_review_last_sent_time'
wp option delete 'wpnts_last_sent_time'
wp option delete 'wpnts_last_plugin_updates'
wp option delete 'wpnts_first_saturday_reset_done'
wp option delete 'wpnts_db_version'
wp option delete 'wpnts_schedules_interval_debuglog_settings'
wp option delete 'wpnts_last_logged_timestamp'
wp option delete 'wpnts_new_last_debug_log_sent_time'
wp option delete 'notifier_ran_setup_wizard'
wp option delete 'wpntswebhook_integration_settings'
wp option delete 'wpntswebhook_media_settings'
wp option delete 'wpntswebhook_menu_settings'
wp option delete 'wpnts_review_hicked_last_sent_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpnts_review_prev_rating_%'"
wp option delete 'wpnts_installation_change_last_sent_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpnts_downloads_prev_%'"
wp option delete 'wpnts_plugin_info_last_sent_time'
wp option delete 'wpnts_last_reset_activity_log_date'
wp option delete 'wpnts_last_sitestatus_updates'
wp option delete 'wpntswebhook_pagenpost_settings'
wp option delete 'wpntswebhook_theme_settings'
wp option delete 'wpntswebhook_widget_settings'
wp option delete 'setup_wizard_data'
wp option delete 'wpntswebhook_emengency_shutdown'
wp option delete 'wpntswebhook_website_downtime_alerts'
wp option delete 'maintenance_mode'
wp option delete 'notifier_turnstile_validated'
wp option delete 'security_api_url'
wp option delete 'security_api_key'
wp option delete 'previously_installed_themes'
wp option delete 'wpnts_last_wordpress_core_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpnts_cron_last_execution_%'"
wp option delete 'NotifierActivationTime'
wp option delete 'nts_activation_redirect'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'health-check-site-status-result'
wp transient delete 'update_plugins'
wp transient delete 'security_patterns_from_api'
wp transient delete 'security_patterns_fetching_lock'
wp transient delete 'update_core'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wpnts_corn_hook'
wp cron event delete 'wpnts_check_cart_abandonment'
wp cron event delete 'wpnts_cleanup_old_cart_sessions'
wp cron event delete 'wpnts_send_incomplete_order_notification'
wp cron event delete 'wpnts_fetch_security_patterns'
wp cron event delete 'wpnts_seven_day_analytics_cleanup'
wp cron event delete 'wpnts_incomplete_orders_cleanup'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpnts_last_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpnts_last_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpnts_last_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpnts_last_template'"
