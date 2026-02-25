<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bplock_general_settings');
delete_site_option('bplock_general_settings');
delete_option('bplock-pages');
delete_site_option('bplock-pages');
delete_option('bplock_gen_globals_copied');
delete_site_option('bplock_gen_globals_copied');
delete_option('bp-components');
delete_site_option('bp-components');
delete_option('custom-post-types');
delete_site_option('custom-post-types');
delete_option('bplock-default-set');
delete_site_option('bplock-default-set');

// Delete Transients
delete_transient('_bplock_is_new_install');
delete_site_transient('_bplock_is_new_install');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bplock_login_attempts_%', '_site_transient_bplock_login_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

