-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcdg_where_hear_about_us', 'wcdg_data_submited_in_sendiblue', 'wcdg_checkout_setting', 'wcdg_billing_fields_order', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_enable_guest_checkout', 'woocommerce_myaccount_page_id', '_welcome_screen_wcdg_mode_activation_redirect_data', 'wcdg-hide-checkout-notice', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

