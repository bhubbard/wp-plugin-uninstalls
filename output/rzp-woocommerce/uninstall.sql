-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'woocommerce_wc-razorpay_settings', 'rzpwc_plugin_dismiss_rating_notice', 'rzpwc_plugin_no_thanks_rating_notice', 'rzpwc_plugin_installed_time', 'rzpwc_plugin_dismiss_donate_notice', 'rzpwc_plugin_no_thanks_donate_notice', 'rzpwc_plugin_dismissed_time', 'rzpwc_plugin_dismissed_time_donate', 'rzpwc-admin-notice-on-activation', 'rzpwc_plugin_deprecate_setting_notice_random_priority');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE 'rzp_woocommerce_connect_mode_%';
DELETE FROM wp_options WHERE option_name LIKE 'rzp_woocommerce_refreshing_access_token_%';

