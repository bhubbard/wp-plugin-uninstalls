<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amazing_linker_review_notice');
delete_site_option('amazing_linker_review_notice');
delete_option('amazing-linker-activation-time');
delete_site_option('amazing-linker-activation-time');
delete_option('widget_amazing_linker_product_widget');
delete_site_option('widget_amazing_linker_product_widget');
delete_option('amazing_linker_credential_tab_option');
delete_site_option('amazing_linker_credential_tab_option');
delete_option('amazing_linker_associate_tab_option');
delete_site_option('amazing_linker_associate_tab_option');
delete_option('amazing_linker_settings_tab_option');
delete_site_option('amazing_linker_settings_tab_option');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('amazing_linker_product_update');

