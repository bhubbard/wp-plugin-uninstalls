-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grw_save_log', 'grw_last_error');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_type';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_msg';
DELETE FROM wp_options WHERE option_name LIKE '%_rate_us';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_rev_notice_hide';
DELETE FROM wp_options WHERE option_name LIKE '%_rev_notice_show';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_is_multisite';
DELETE FROM wp_options WHERE option_name LIKE '%_auth_code';
DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron';
DELETE FROM wp_options WHERE option_name LIKE '%_debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_demand_assets';
DELETE FROM wp_options WHERE option_name LIKE '%_inlinecss_off';
DELETE FROM wp_options WHERE option_name LIKE '%_widget';
DELETE FROM wp_options WHERE option_name LIKE '%_last_error';
DELETE FROM wp_options WHERE option_name LIKE '%_minified_assets';
DELETE FROM wp_options WHERE option_name LIKE '%_yelp_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_do_activation';
DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron_timeout';
DELETE FROM wp_options WHERE option_name LIKE '%_feed_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron_log';
DELETE FROM wp_options WHERE option_name LIKE '%_reviews';

