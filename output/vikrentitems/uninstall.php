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
delete_option('vikrentitems_software_version');
delete_site_option('vikrentitems_software_version');
delete_option('vikrentitems_onactivate');
delete_site_option('vikrentitems_onactivate');
delete_option('vikrentitems_screen_failed_attempts');
delete_site_option('vikrentitems_screen_failed_attempts');
delete_option('vikrentitems_list_limit');
delete_site_option('vikrentitems_list_limit');
delete_option('vikrentitems_changelog');
delete_site_option('vikrentitems_changelog');
delete_option('vikrentitems_license_key');
delete_site_option('vikrentitems_license_key');
delete_option('vikrentitems_license_expdate');
delete_site_option('vikrentitems_license_expdate');
delete_option('vikrentitems_license_hash');
delete_site_option('vikrentitems_license_hash');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vikrentitems_tmp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vri_delivery_modal_tmpl_component');
delete_site_option('vri_delivery_modal_tmpl_component');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vikrentitems_screen_%', '_site_transient_vikrentitems_screen_%' ) );
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

