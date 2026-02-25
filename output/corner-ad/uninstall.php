<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CORNER_AD_PLUGIN_VERSION');
delete_site_option('CORNER_AD_PLUGIN_VERSION');
delete_option('corner_ad_analytics');
delete_site_option('corner_ad_analytics');
delete_option('corner_ad_analytics_tracking_id');
delete_site_option('corner_ad_analytics_tracking_id');
delete_option('corner_ad_default_ad');
delete_site_option('corner_ad_default_ad');
delete_option('corner_ad_random_ad');
delete_site_option('corner_ad_random_ad');
delete_option('corner_ad_context');
delete_site_option('corner_ad_context');
delete_option('corner_ad_posttypes');
delete_site_option('corner_ad_posttypes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

