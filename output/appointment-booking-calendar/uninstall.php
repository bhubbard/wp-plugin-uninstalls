<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CPABC_APPOINTMENTS_LOAD_SCRIPTS');
delete_site_option('CPABC_APPOINTMENTS_LOAD_SCRIPTS');
delete_option('CPABC_PCODE');
delete_site_option('CPABC_PCODE');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_JS' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_CSS' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CPABC_APPOINTMENTS_DEFAULT_USE_EDITOR');
delete_site_option('CPABC_APPOINTMENTS_DEFAULT_USE_EDITOR');
delete_option('CPABC_CAL_TIME_ZONE_MODIFY_SET');
delete_site_option('CPABC_CAL_TIME_ZONE_MODIFY_SET');
delete_option('CPABC_CAL_TIME_SLOT_SIZE_SET');
delete_site_option('CPABC_CAL_TIME_SLOT_SIZE_SET');
delete_option('CPABC_EXCLUDED_COLUMNS');
delete_site_option('CPABC_EXCLUDED_COLUMNS');
delete_option('ABC_RCODE');
delete_site_option('ABC_RCODE');
delete_option('ABC_ONE_TIME_4UPDATE');
delete_site_option('ABC_ONE_TIME_4UPDATE');
delete_option('CP_ABC_JS');
delete_site_option('CP_ABC_JS');
delete_option('CP_ABC_CSS');
delete_site_option('CP_ABC_CSS');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cpeople-captcha-%', '_site_transient_cpeople-captcha-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

