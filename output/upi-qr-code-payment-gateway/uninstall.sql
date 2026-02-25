-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwu_plugin_dismiss_rating_notice', 'dwu_plugin_no_thanks_rating_notice', 'dwu_plugin_installed_time', 'dwu_plugin_dismiss_donate_notice', 'dwu_plugin_no_thanks_donate_notice', 'dwu_plugin_dismissed_time', 'dwu_plugin_dismissed_time_donate', 'woocommerce_wc-upi_settings', 'dwu_plugin_dismiss_knit_pay_upi_notice', 'dwu-admin-notice-on-activation', 'dwu_plugin_knit_pay_upi_notice_random_priority');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

