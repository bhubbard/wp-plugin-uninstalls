-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_statistics_dismissed_notices', 'akismet_spam_count', 'wp_statistics_plugin_version', 'wp_statistics_is_fresh', 'wp_statistics_installation_time', 'wp_statistics_update_page_type', 'wp_statistics', 'wp_statistics_privacy_status', 'wp_statistics_referrals_detail', 'wp_statistics_overview_page_ads', 'wp_statistics_users_city', 'wp_statistics_activate_addons', 'wp_statistics_disable_addons', 'wp_statistics_disable_addons_notice', 'wp_statistics_check_user_online', 'wp_statistics_daily_salt', 'wp_statistics_dismissed_widgets', 'wp_statistics_jobs', 'wp_statistics_user_modals', 'wp_statistics_closed_widgets', 'wp_statistics_licenses', 'wp_statistics_tracker_js_errors', 'wp_statistics_db', 'wps_robotlist', 'wp_statistics_cipher_key', 'wp_statistics_hashed_assets', 'wp_statistics_marketing_campaigns', 'wp_statistics_notifications', 'wps_top_referring', 'wps_excluded_hostname_to_ip_cache', 'wps_check_rest_api', 'update_plugins', 'wp_statistics_flash_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens', 'rank_math_seo_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens', 'rank_math_seo_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens', 'rank_math_seo_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens', 'rank_math_seo_score');

