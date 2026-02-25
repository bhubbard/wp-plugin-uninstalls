<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('groupsysmessages');
delete_site_option('groupsysmessages');
delete_option('vikrentcar_software_version');
delete_site_option('vikrentcar_software_version');
delete_option('vikrentcar_onactivate');
delete_site_option('vikrentcar_onactivate');
delete_option('vikrentcar_breaking_changes');
delete_site_option('vikrentcar_breaking_changes');
delete_option('vikrentcar_screen_failed_attempts');
delete_site_option('vikrentcar_screen_failed_attempts');
delete_option('vikrentcar_list_limit');
delete_site_option('vikrentcar_list_limit');
delete_option('vikrentcar_changelog');
delete_site_option('vikrentcar_changelog');
delete_option('vikrentcar_license_key');
delete_site_option('vikrentcar_license_key');
delete_option('vikrentcar_license_expdate');
delete_site_option('vikrentcar_license_expdate');
delete_option('vikrentcar_license_hash');
delete_site_option('vikrentcar_license_hash');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vikrentcar_tmp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vikrentcar_screen_%', '_site_transient_vikrentcar_screen_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );

