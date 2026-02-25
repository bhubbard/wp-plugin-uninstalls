<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fssc_use_data');
delete_site_option('_fssc_use_data');
delete_option('_fssc_advanced_settings');
delete_site_option('_fssc_advanced_settings');
delete_option('_fssc_schema_main_settings');
delete_site_option('_fssc_schema_main_settings');
delete_option('_fssc_licence_settings');
delete_site_option('_fssc_licence_settings');
delete_option('_fssc_server_url');
delete_site_option('_fssc_server_url');
delete_option('_fspi_server_url');
delete_site_option('_fspi_server_url');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('fs_schema_settings');
delete_site_option('fs_schema_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'fssc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'fssc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'fssc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'fssc_%' ) );

