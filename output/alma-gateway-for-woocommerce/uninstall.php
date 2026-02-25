<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alma_previous_version');
delete_site_option('alma_previous_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alma_version');
delete_site_option('alma_version');
delete_option('alma_migration_ongoing');
delete_site_option('alma_migration_ongoing');
delete_option('woocommerce_alma_settings');
delete_site_option('woocommerce_alma_settings');
delete_option('alma_warnings_handled');
delete_site_option('alma_warnings_handled');
delete_option('woocommerce_checkout_phone_field');
delete_site_option('woocommerce_checkout_phone_field');
delete_option('alma_soc_ongoing');
delete_site_option('alma_soc_ongoing');
delete_option('wc_alma_settings');
delete_site_option('wc_alma_settings');

// Delete Transients
delete_transient('alma-admin-soc-panel');
delete_site_transient('alma-admin-soc-panel');

