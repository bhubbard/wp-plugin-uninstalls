<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpis_affiliate_royale_active');
delete_site_option('cpis_affiliate_royale_active');
delete_option('cpis_options');
delete_site_option('cpis_options');
delete_option('cpis_friendly_url');
delete_site_option('cpis_friendly_url');
delete_option('cpis_layout');
delete_site_option('cpis_layout');
delete_option('cpis_safe_download');
delete_site_option('cpis_safe_download');
delete_option('cpis_prevent_cache');
delete_site_option('cpis_prevent_cache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cpis_has_been_configured');
delete_site_option('cpis_has_been_configured');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cpis_penalized_ip_%', '_site_transient_cpis_penalized_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

