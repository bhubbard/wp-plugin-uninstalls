<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravity_forms_cc_valid_api');
delete_site_option('gravity_forms_cc_valid_api');
delete_option('gravityforms_cc_migrated');
delete_site_option('gravityforms_cc_migrated');
delete_option('gf_constantcontact_settings');
delete_site_option('gf_constantcontact_settings');
delete_option('gf_constantcontact_migrated');
delete_site_option('gf_constantcontact_migrated');
delete_option('gf_constantcontact_version');
delete_site_option('gf_constantcontact_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gf_ctct_lists_%', '_site_transient_gf_ctct_lists_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('gravity_forms_cc_valid_api');
delete_site_transient('gravity_forms_cc_valid_api');

