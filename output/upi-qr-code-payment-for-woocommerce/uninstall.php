<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upiwc_plugin_dismiss_rating_notice');
delete_site_option('upiwc_plugin_dismiss_rating_notice');
delete_option('upiwc_plugin_no_thanks_rating_notice');
delete_site_option('upiwc_plugin_no_thanks_rating_notice');
delete_option('upiwc_plugin_installed_time');
delete_site_option('upiwc_plugin_installed_time');
delete_option('upiwc_plugin_dismiss_donate_notice');
delete_site_option('upiwc_plugin_dismiss_donate_notice');
delete_option('upiwc_plugin_no_thanks_donate_notice');
delete_site_option('upiwc_plugin_no_thanks_donate_notice');
delete_option('upiwc_plugin_dismissed_time');
delete_site_option('upiwc_plugin_dismissed_time');
delete_option('upiwc_plugin_dismissed_time_donate');
delete_site_option('upiwc_plugin_dismissed_time_donate');
delete_option('woocommerce_wc-upi_settings');
delete_site_option('woocommerce_wc-upi_settings');
delete_option('upiwc_plugin_dismiss_knit_pay_upi_notice');
delete_site_option('upiwc_plugin_dismiss_knit_pay_upi_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('upiwc-admin-notice-on-activation');
delete_site_transient('upiwc-admin-notice-on-activation');
delete_transient('upiwc_plugin_knit_pay_upi_notice_random_priority');
delete_site_transient('upiwc_plugin_knit_pay_upi_notice_random_priority');

