-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lw_all_in_one', 'lw_all_in_one_version', 'lw_all_in_one_privacy_pages', 'gadwp_options', 'gadwp_redeemed_code', 'exactmetrics_tracking_notice', 'exactmetrics_usage_tracking_last_checkin', 'exactmetrics_usage_tracking_config', 'wim_activation_status', 'web-instant-messenger', 'italy_cookie_choices', 'WpFastestCacheExclude', 'wpcf7', 'woocommerce_tax_display_shop', 'lw_all_in_one_ga_custom_events', 'lw_all_in_one_purified_css');
DELETE FROM wp_options WHERE option_name LIKE '%_privacy_pages';

