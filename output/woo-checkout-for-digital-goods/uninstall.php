<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcdg_where_hear_about_us');
delete_site_option('wcdg_where_hear_about_us');
delete_option('wcdg_data_submited_in_sendiblue');
delete_site_option('wcdg_data_submited_in_sendiblue');
delete_option('wcdg_checkout_setting');
delete_site_option('wcdg_checkout_setting');
delete_option('wcdg_billing_fields_order');
delete_site_option('wcdg_billing_fields_order');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Delete Transients
delete_transient('_welcome_screen_wcdg_mode_activation_redirect_data');
delete_site_transient('_welcome_screen_wcdg_mode_activation_redirect_data');
delete_transient('wcdg-hide-checkout-notice');
delete_site_transient('wcdg-hide-checkout-notice');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

