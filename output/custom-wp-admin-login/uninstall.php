<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_wp_admin_login');
delete_site_option('custom_wp_admin_login');
delete_option('r_notice_data');
delete_site_option('r_notice_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-transients' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ReduxFrameworkPlugin');
delete_site_option('ReduxFrameworkPlugin');
delete_option('redux-framework-tracking');
delete_site_option('redux-framework-tracking');
delete_option('redux_version_upgraded_from');
delete_site_option('redux_version_upgraded_from');
delete_option('redux_support_hash');
delete_site_option('redux_support_hash');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-transient', '_site_transient_%-transient' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('redux_tracking_cache');
delete_site_transient('redux_tracking_cache');
delete_transient('redux-extensions-fetch');
delete_site_transient('redux-extensions-fetch');
delete_transient('_redux_activation_redirect');
delete_site_transient('_redux_activation_redirect');
delete_transient('redux_contributors');
delete_site_transient('redux_contributors');

// Clear Cron Jobs
wp_clear_scheduled_hook('redux_tracking');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );

