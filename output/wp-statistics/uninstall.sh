#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_statistics_dismissed_notices'
wp option delete 'akismet_spam_count'
wp option delete 'wp_statistics_plugin_version'
wp option delete 'wp_statistics_is_fresh'
wp option delete 'wp_statistics_installation_time'
wp option delete 'wp_statistics_update_page_type'
wp option delete 'wp_statistics'
wp option delete 'wp_statistics_privacy_status'
wp option delete 'wp_statistics_referrals_detail'
wp option delete 'wp_statistics_overview_page_ads'
wp option delete 'wp_statistics_users_city'
wp option delete 'wp_statistics_activate_addons'
wp option delete 'wp_statistics_disable_addons'
wp option delete 'wp_statistics_disable_addons_notice'
wp option delete 'wp_statistics_check_user_online'
wp option delete 'wp_statistics_daily_salt'
wp option delete 'wp_statistics_dismissed_widgets'
wp option delete 'wp_statistics_jobs'
wp option delete 'wp_statistics_user_modals'
wp option delete 'wp_statistics_closed_widgets'
wp option delete 'wp_statistics_licenses'
wp option delete 'wp_statistics_tracker_js_errors'
wp option delete 'wp_statistics_db'
wp option delete 'wps_robotlist'
wp option delete 'wp_statistics_cipher_key'
wp option delete 'wp_statistics_hashed_assets'
wp option delete 'wp_statistics_marketing_campaigns'
wp option delete 'wp_statistics_notifications'

# Delete Transients
wp transient delete 'wps_top_referring'
wp transient delete 'wps_excluded_hostname_to_ip_cache'
wp transient delete 'wps_check_rest_api'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'update_plugins'
wp transient delete 'wp_statistics_flash_notices'

# Clear Cron Jobs
wp cron event delete 'wp_statistics_dbmaint_hook'
wp cron event delete 'wp_statistics_referrals_db_hook'
wp cron event delete 'wp_statistics_report_hook'
wp cron event delete 'wp_statistics_licenses_hook'
wp cron event delete 'wp_statistics_geoip_hook'
wp cron event delete 'wp_statistics_dbmaint_visitor_hook'
wp cron event delete 'wp_statistics_add_visit_hook'
wp cron event delete 'wp_statistics_optimize_table'
wp cron event delete 'wp_statistics_daily_cron_hook'
wp cron event delete 'wp_statistics_referrerspam_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_seo_score'"
