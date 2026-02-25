<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wlgf_current_version');
delete_site_option('wlgf_current_version');
delete_option('wlgf_last_version');
delete_site_option('wlgf_last_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wlgf_saved_form_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wlgf_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('we_lgf_current_version');
delete_site_option('we_lgf_current_version');
delete_option('we_lgf_last_version');
delete_site_option('we_lgf_last_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lgf_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lgf_saved_form_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wlgf_settings');
delete_site_option('wlgf_settings');
delete_option('wlgf_form_1');
delete_site_option('wlgf_form_1');
delete_option('wlgf_form_2');
delete_site_option('wlgf_form_2');
delete_option('wlgf_secretkey');
delete_site_option('wlgf_secretkey');

// Delete Transients
delete_transient('wlgf_version_check');
delete_site_transient('wlgf_version_check');

