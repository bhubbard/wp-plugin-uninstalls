<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_engine_plugin_version');
delete_site_option('block_engine_plugin_version');
delete_option('block_engine_plugin_db_version');
delete_site_option('block_engine_plugin_db_version');
delete_option('block_engine_install_date');
delete_site_option('block_engine_install_date');
delete_option('block_engine_css_version');
delete_site_option('block_engine_css_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'block_engine_ctt_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'block_engine_ctt_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'block_engine_ctt_via' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'block_engine_ctt_via' ) );

