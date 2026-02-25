<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yrc_version');
delete_site_option('yrc_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_refresh' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yrc_keys');
delete_site_option('yrc_keys');
delete_option('yrc_lang_terms');
delete_site_option('yrc_lang_terms');
delete_option('yrc_license_key');
delete_site_option('yrc_license_key');
delete_option('yrc_wrong_version_notice');
delete_site_option('yrc_wrong_version_notice');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_perm', '_site_transient_%_perm' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

