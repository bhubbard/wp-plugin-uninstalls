<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fep_cf_to_field');
delete_site_option('fep_cf_to_field');
delete_option('FEPCF_admin_options');
delete_site_option('FEPCF_admin_options');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('fep_db_version');
delete_site_option('fep_db_version');
delete_option('fep_meta_db_version');
delete_site_option('fep_meta_db_version');
delete_option('_fep_used_nonces');
delete_site_option('_fep_used_nonces');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fep_cf_%', '_site_transient_fep_cf_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fepcf_page_id');
delete_site_transient('fepcf_page_id');

