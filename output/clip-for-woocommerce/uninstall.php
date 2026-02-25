<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clipredirect_first_onboarding');
delete_site_option('clipredirect_first_onboarding');
delete_option('woocommerce_wc_clipredirect_settings');
delete_site_option('woocommerce_wc_clipredirect_settings');
delete_option('clipredirect_migration_v2_done');
delete_site_option('clipredirect_migration_v2_done');
delete_option('woocommerce_wc_clip_settings');
delete_site_option('woocommerce_wc_clip_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('clip_first_onboarding');
delete_site_option('clip_first_onboarding');

