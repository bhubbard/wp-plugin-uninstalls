<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shieldon_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpso_last_reset_time');
delete_site_option('wpso_last_reset_time');
delete_option('shieldon_authetication');
delete_site_option('shieldon_authetication');
delete_option('shieldon_xss_protected_type');
delete_site_option('shieldon_xss_protected_type');
delete_option('shieldon_xss_protected_list');
delete_site_option('shieldon_xss_protected_list');
delete_option('wpso_driver_reset');
delete_site_option('wpso_driver_reset');
delete_option('wpso_version');
delete_site_option('wpso_version');
delete_option('shieldon_component');
delete_site_option('shieldon_component');
delete_option('shieldon_xss_protection');
delete_site_option('shieldon_xss_protection');
delete_option('wpso_driver_hash');
delete_site_option('wpso_driver_hash');
delete_option('wpso_lang_code');
delete_site_option('wpso_lang_code');
delete_option('wpso_channel_id');
delete_site_option('wpso_channel_id');

