-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upiwc_plugin_dismiss_rating_notice', 'upiwc_plugin_no_thanks_rating_notice', 'upiwc_plugin_installed_time', 'upiwc_plugin_dismiss_donate_notice', 'upiwc_plugin_no_thanks_donate_notice', 'upiwc_plugin_dismissed_time', 'upiwc_plugin_dismissed_time_donate', 'woocommerce_wc-upi_settings', 'upiwc_plugin_dismiss_knit_pay_upi_notice', 'upiwc-admin-notice-on-activation', 'upiwc_plugin_knit_pay_upi_notice_random_priority');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

