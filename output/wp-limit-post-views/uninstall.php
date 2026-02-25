<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplpv-post-view-count');
delete_site_option('wplpv-post-view-count');
delete_option('wplpv-post-view-count-unit');
delete_site_option('wplpv-post-view-count-unit');
delete_option('wplpv-redirect-on-limit');
delete_site_option('wplpv-redirect-on-limit');
delete_option('wplpv-redirect-location');
delete_site_option('wplpv-redirect-location');
delete_option('wplpv-use-js');
delete_site_option('wplpv-use-js');
delete_option('wplpv-using-pmppro');
delete_site_option('wplpv-using-pmppro');
delete_option('wplpv-db-version');
delete_site_option('wplpv-db-version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wplpv_post_view_limit_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wplpv_pmppro_limit_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pmprolpv_redirect_page');
delete_site_option('pmprolpv_redirect_page');

// Clear Cron Jobs
wp_clear_scheduled_hook('wplpv_daily');

