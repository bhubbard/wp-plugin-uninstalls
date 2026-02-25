<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'inspire_checkout_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inspire_checkout_fields_css_disable');
delete_site_option('inspire_checkout_fields_css_disable');
delete_option('api_flexible-checkout-fields-pro_activated');
delete_site_option('api_flexible-checkout-fields-pro_activated');
delete_option('inspire_checkout_fields_section_settings');
delete_site_option('inspire_checkout_fields_section_settings');
delete_option('wpdesk_helper_options');
delete_site_option('wpdesk_helper_options');
delete_option('wpdesk_tracker_skip_flexible_checkout_fields');
delete_site_option('wpdesk_tracker_skip_flexible_checkout_fields');
delete_option('wpdesk_tracker_notice');
delete_site_option('wpdesk_tracker_notice');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

