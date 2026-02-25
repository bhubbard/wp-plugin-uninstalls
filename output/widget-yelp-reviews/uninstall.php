<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yrw_active');
delete_site_option('yrw_active');
delete_option('yrw_api_key');
delete_site_option('yrw_api_key');
delete_option('yrw_activation_time');
delete_site_option('yrw_activation_time');
delete_option('yrw_is_multisite');
delete_site_option('yrw_is_multisite');
delete_option('yrw_version');
delete_site_option('yrw_version');
delete_option('yrw_rev_notice_hide');
delete_site_option('yrw_rev_notice_hide');
delete_option('rplg_rev_notice_show');
delete_site_option('rplg_rev_notice_show');
delete_option('yrw_language');
delete_site_option('yrw_language');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yrw_refresh_reviews_%', '_site_transient_yrw_refresh_reviews_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('yrw_refresh_reviews');

