-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grw_notice_type', 'grw_notice_msg', 'grw_rate_us', 'grw_activation_time', 'grw_rev_notice_hide', 'rplg_rev_notice_show', 'grw_version', 'grw_is_multisite', 'grw_auth_code', 'grw_revupd_cron', 'grw_active', 'grw_google_api_key', 'grw_debug_mode', 'grw_last_error', 'grw_demand_assets', 'grw_async_css', 'grw_rucss_safelist', 'grw_inlinecss_off', 'widget_grw_widget', 'grw_feed_ids', 'grw_freq_revs_upd', 'grw_gpa_old', 'grw_do_activation', 'grw_revupd_cron_timeout', 'grw_revupd_cron_log', 'grw_save_log');
DELETE FROM wp_options WHERE option_name LIKE '%_reviews';

